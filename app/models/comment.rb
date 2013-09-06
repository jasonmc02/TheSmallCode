#class Comment < ActiveRecord::Base
#  belongs_to :post
#
#  attr_accessible :author, :content, :date, :post_id, :title
#end

class Comment
  include Mongoid::Document
  field :author
  field :content
  field :date, :type => DateTime
  field :post_id, :type => Integer
  field :title

  #asi se hace la relacion de que
  #esta contenido en la tabla de 
  #posts
  #embedded_in :posts, :inverse_of => :comments
end