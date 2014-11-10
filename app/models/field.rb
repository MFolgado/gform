class Field < ActiveRecord::Base
  
  has_many :type
  has_and_belongs_to_many :category


# VALIDAÇÃO DOS CAMPOS 
  
  validates :name,
            presence: {in:[true , false ], message: "não pode ser branco!"},                        
            uniqueness: {case_sensitive: false, message: " já existente!"}

  validates :type_id, presence: {in:[true], message: "não pode ser branco!"}

end
