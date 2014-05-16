class Questionnaire < ActiveRecord::Base
  belongs_to :education
  belongs_to :sex
  has_many :ratings

  validates_presence_of :age, :message => "   Nie uzupełniłes wieku! Nie wstydz sie :)   "
  accepts_nested_attributes_for :ratings
end
