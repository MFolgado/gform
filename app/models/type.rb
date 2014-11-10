class Type < ActiveRecord::Base

  belongs_to :field

# VALIDAÇÃO DOS CAMPOS 
  
  validates :name,
            presence: true,                        
            length: {minimum: 4, message: " deve ter no mínimo 4 caracteres!"},
            uniqueness: {case_sensitive: false, message: " já existente!"}

end
