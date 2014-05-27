class Rating < ActiveRecord::Base
  belongs_to :beer
  belongs_to :questionnaire
  before_save :update_average
  accepts_nested_attributes_for :beer


  private
     def update_average
        
        self.average = (color.to_i + price.to_i + design.to_i + taste.to_i) / 4
       
     end

     
end
