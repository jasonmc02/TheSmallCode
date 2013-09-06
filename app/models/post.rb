#class Post < ActiveRecord::Base
#  has_many :comments
#  has_many :images
#  belongs_to :author
#
#  attr_accessible :author_id, :content, :date, :description, :title
#
#end
class Post
  include Mongoid::Document
  field :author_id, :type => Integer
  field :content
  field :date, :type => DateTime
  field :description
  field :title

  #las validaciones deberian servir
  #de la misma manera que con AR
  #validates :title, :presence => true

  #de esta forma se meten los 
  #comentarios dentro de la misma tabla
  #de posts
  #embeds_many :comments
end
