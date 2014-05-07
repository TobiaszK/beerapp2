class QuestBeer < ActiveRecord::Base
	belongs_to :questionnaire
    belongs_to :beer
    has_many :beer
end
