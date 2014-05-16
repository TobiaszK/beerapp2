class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.integer :age
      t.belongs_to :sex, index: true
      t.string :city
      t.belongs_to :education, index: true
     

      t.timestamps
    end
  end
end
