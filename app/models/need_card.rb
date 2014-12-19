class NeedCard < ActiveRecord::Base

  def self.category(c)
    where(category: c)
  end

  def self.card(c, n)
    category(c).where(title: n).first
  end

  def self.get_categories
    all.group_by{|p| p[:category]}.map { |k,v| k}
  end
end
