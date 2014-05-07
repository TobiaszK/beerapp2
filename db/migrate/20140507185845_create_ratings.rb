class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :beer, index: true
      t.belongs_to :questionnaire, index: true
      t.integer :taste
      t.integer :color
      t.integer :price
      t.integer :design
      t.float :average

      t.timestamps
    end
  end
end
