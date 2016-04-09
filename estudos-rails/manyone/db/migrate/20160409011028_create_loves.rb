class CreateLoves < ActiveRecord::Migration
  def change
    create_table :loves do |t|
      t.references :person, index: true, foreign_key: true
      t.string :name
      t.string :age
      t.timestamps null: false
    end
  end
end
