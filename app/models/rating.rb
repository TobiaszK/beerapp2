class Rating < ActiveRecord::Base
  belongs_to :beer
  belongs_to :questionnaire
  before_save :update_average

  private
     def update_average
        
        self.average = (color.to_i + price.to_i + design.to_i + taste.to_i) / 4
       
     end
 
end
