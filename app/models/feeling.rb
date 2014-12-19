class Feeling < ActiveRecord::Base


  belongs_to :feeling_card
  belongs_to :experience

  has_many :needs, dependent: :destroy

  def self.get_not_finished_feelings
    where(feeling_card_id: nil)
  end

  def self.get_floatings
    where("feeling_card_id is not null").where(experience_id: nil)
  end

  def get_super_categories
    unless super_category
      FeelingCard.get_super_categories
    end
  end

  def get_categories
    if super_category
      FeelingCard.get_categories(super_category)
    end
  end

  def get_feelings
    if category
      FeelingCard.get_feelings(super_category, category)
    end
  end


  def vfeeling
    if feeling_card
      feeling_card.title
    end
  end

  def vfeeling=(card_id)
    #card = FeelingCard.get_card(super_category, category, f)
    if card_id && !card_id.empty?
      self.feeling_card = FeelingCard.find(card_id)
    end
  end
end
