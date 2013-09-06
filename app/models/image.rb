class Image < ActiveRecord::Base
  belongs_to :posts

  attr_accessible :location, :order, :post_id
end
