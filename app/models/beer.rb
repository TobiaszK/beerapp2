class Beer < ActiveRecord::Base
  belongs_to :brand
  belongs_to :image

  has_many :ratings
end
