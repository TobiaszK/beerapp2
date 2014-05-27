class Beer < ActiveRecord::Base
  belongs_to :brand
  belongs_to :cost
  belongs_to :kind
  belongs_to :processing
  belongs_to :region
  belongs_to :sort



  has_many :ratings
end
