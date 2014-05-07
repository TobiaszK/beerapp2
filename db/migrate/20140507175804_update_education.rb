class UpdateEducation < ActiveRecord::Migration
  def self.up
    add_column :educations, :name, :string

    Education.all.each do |e|
        e.update(name: e.typ)
    end

    remove_column :educations, :typ
  end

  def self.down
    add_column :educations, :typ, :string
    Education.all.each do |e|
        e.update(typ: e.name)
    end
    remove_column :educations, :name, :string
  end
end
