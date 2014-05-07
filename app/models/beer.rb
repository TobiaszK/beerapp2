class Beer < ActiveRecord::Base
  belongs_to :brand
  belongs_to :image

  has_and_belongs_to_many :questionnaires
end
