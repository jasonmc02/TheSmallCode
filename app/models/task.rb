class Task
  include Mongoid::Document
  field :name, type: String
  field :task, type: String
end
