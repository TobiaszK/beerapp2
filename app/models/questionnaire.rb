class Questionnaire < ActiveRecord::Base
  belongs_to :education
  belongs_to :sex
  has_many :ratings

  validates_presence_of :age, :message => "   Nie uzupełniłes wieku!   "
  validates :age, numericality: {greater_than_or_equal_to: 18, message: " Nie jesteś pełnoletni/-a " }
  accepts_nested_attributes_for :ratings
end
