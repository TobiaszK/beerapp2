class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.belongs_to :name, index: true
      t.belongs_to :kind, index: true
      t.belongs_to :sort, index: true
      t.belongs_to :cost, index: true
      t.belongs_to :region, index: true
      t.belongs_to :processing, index: true
      t.belongs_to :brand, index: true
      t.timestamps
    end
  end
end
