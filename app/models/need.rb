class Need < ActiveRecord::Base
  belongs_to :need_card
  belongs_to :feeling
end
