class Experience < ActiveRecord::Base

  belongs_to :user
  has_many :feelings, dependent: :destroy

  after_save :collect_floating_feelings

  def collect_floating_feelings
    floating_feelings = Feeling.get_floatings(user)
    floating_feelings.each do |feeling|
      if feeling.feeling_card
        feeling.experience = self
        feeling.save!
        feeling.needs.where("need_card_id is null").destroy_all
      else
        feeling.destroy
      end
    end
  end
end
