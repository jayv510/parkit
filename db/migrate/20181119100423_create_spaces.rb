class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :half_hour_rate
      t.boolean :availability
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
