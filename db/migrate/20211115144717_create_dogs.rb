class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :size
      t.integer :age
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
