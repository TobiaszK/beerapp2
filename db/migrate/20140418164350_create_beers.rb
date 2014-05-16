class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.belongs_to :brand, index: true
      t.timestamps
    end
  end
end
