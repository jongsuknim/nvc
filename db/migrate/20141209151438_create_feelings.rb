class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.belongs_to :feeling_card, index: true
      t.belongs_to :experience, index: true
      t.string :note
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :feelings, :deleted_at
  end
end
