class Type < ActiveRecord::Base
  has_many :documents,:order=>'name'

  default_scope order(:name)
  
  validates :name,:presence => true,:uniqueness => true
  
end
