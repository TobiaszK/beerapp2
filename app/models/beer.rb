class Beer < ActiveRecord::Base
  belongs_to :brand
  belongs_to :cost
  belongs_to :kind
  belongs_to :processing
  belongs_to :region
  belongs_to :sort

  has_attached_file :image, {
    :default_url => "beer_by.png",
   }

   validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  has_many :ratings
end
