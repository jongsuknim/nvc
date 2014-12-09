class Feeling < ActiveRecord::Base
  belongs_to :feeling_card
  belongs_to :experience

  has_many :needs
end
