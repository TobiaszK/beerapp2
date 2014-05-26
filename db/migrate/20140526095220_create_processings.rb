class CreateProcessings < ActiveRecord::Migration
  def change
    create_table :processings do |t|
      t.string :name

      t.timestamps
    end
  end
end
