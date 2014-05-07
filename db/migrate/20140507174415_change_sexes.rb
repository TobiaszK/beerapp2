class ChangeSexes < ActiveRecord::Migration
  def change
    remove_column :sexes, :typs, :string
    add_column :sexes, :name, :string
  end
end
