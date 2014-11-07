class Field < ActiveRecord::Base
  
  has_many :type
  has_and_belongs_to_many :category

end
