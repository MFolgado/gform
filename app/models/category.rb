class Category < ActiveRecord::Base
  has_and_belongs_to_many :field


  # VALIDAÇÃO DOS CAMPOS 

  validates :field_ids, presence: true
  
  validates :name,
            presence: {in:[true , false ], message: "não pode ser branco!"},                        
            uniqueness: {case_sensitive: false, message: " já existente!"}

  

  
end
