class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :typ

      t.timestamps
    end
  end
end
