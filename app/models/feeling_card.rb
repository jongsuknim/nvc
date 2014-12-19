class FeelingCard < ActiveRecord::Base

  def self.get_structed
    all.group_by{|p| p[:category]}.group_by{ |k,v| v[0][:super_category]}
  end

  def self.get_super_categories
    all.group_by{|p| p[:super_category]}.map { |k,v| k}
  end

  def self.super_category(sc)
    where(super_category: sc)
  end

  def self.category(sc, c)
    super_category(sc).where(category: c)
  end

  def self.get_card(sc, c, f)
    category(sc, c).where(title: f).first
  end

  def self.get_categories(super_category)
    all.super_category(super_category).group_by{|p| p[:category]}.map { |k,v| k}
  end

  def self.get_feelings(super_category, category)
    category(super_category, category)
  end
end
