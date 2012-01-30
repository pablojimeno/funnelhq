class Project
  
  include Core::Mongoid::Document
<<<<<<< HEAD
=======
  
  Types = %w(admin internal client)
>>>>>>> 7a55de974b5827416cebe3bad55fb447d54dfcf8
  
  # Schema
  
  field :title, :type => String
  field :project_type, :type => String
  field :description, :type => String
  
  validates_presence_of :title
  validates_presence_of :description
  
  embedded_in :user, :inverse_of => :projects
  
  # Scopes 
  
  scope :recent, order_by(:created_at => :desc).limit(100)
  
end
