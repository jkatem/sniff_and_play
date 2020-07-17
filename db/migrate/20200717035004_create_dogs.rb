class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :hobbies
      t.string :bio
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
