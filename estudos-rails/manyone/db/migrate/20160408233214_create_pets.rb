class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :person, index: true, foreign_key: true
      t.string :name
      t.string :race
      t.timestamps null: false
    end
  end
end
