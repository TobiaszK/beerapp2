class Questionnaire < ActiveRecord::Base
  belongs_to :education 
  belongs_to :sex
  has_many :quest_beers

  has_and_belongs_to_many :beers

  validates :age, presence: true
end
