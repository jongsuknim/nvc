class Need < ActiveRecord::Base
  belongs_to :need_card
  belongs_to :feeling

  def self.get_not_finished
    where(need_card_id: nil)
  end

  def get_needs
    if category
      NeedCard.category(category)
    end
  end

  def vneed
    if need_card
      need_card.title
    end
  end

  def vneed=(card_id)
    #card = FeelingCard.get_card(super_category, category, f)
    if card_id && !card_id.empty?
      self.need_card = NeedCard.find(card_id)
    end
  end

end
