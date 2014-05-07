class Questionnaire < ActiveRecord::Base
  belongs_to :education
  belongs_to :sex
  has_many :ratings

  validates :age, presence: true
  accepts_nested_attributes_for :ratings
end
