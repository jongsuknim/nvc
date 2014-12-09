class CreateNeedCards < ActiveRecord::Migration
  def change
    create_table :need_cards do |t|
      t.string :category
      t.string :title

      t.timestamps
    end
  end
end
