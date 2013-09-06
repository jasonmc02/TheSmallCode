class Author < ActiveRecord::Base
  has_many :posts

  attr_accessible :name, :nickname, :other, :surname, :user_id
end
