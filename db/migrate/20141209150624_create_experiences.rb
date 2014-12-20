class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.belongs_to :user, index: true
      t.string :observation
      t.string :request
      t.string :memo
      t.string :status
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :experiences, :deleted_at
  end
end
