class CreateFeelingCards < ActiveRecord::Migration
  def change
    create_table :feeling_cards do |t|
      t.string :super_category
      t.string :category
      t.string :title

      t.timestamps
    end
  end
end
