class CreateQuestBeers < ActiveRecord::Migration
  def change
    create_table :quest_beers, :id => false do |t|
      t.integer :questionnaire_id, :null => false
      t.integer  :beer_id
      t.integer :taste
      t.integer :color
      t.integer :price
      t.integer :design
      t.float :average

      t.timestamps
    end
    add_index :quest_beers, [:questionnaire_id, :beer_id], :unique => true
  end
end
