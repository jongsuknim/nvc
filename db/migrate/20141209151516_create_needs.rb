class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.belongs_to :user, index: true
      t.belongs_to :need_card, index: true
      t.belongs_to :feeling, index: true
      t.string :category
      t.string :note
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :needs, :deleted_at
  end
end
