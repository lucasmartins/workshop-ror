class Empresa < ActiveRecord::Base
  
  has_many :pessoas
  
  validates :razao_social, :presence => true, :length => { :maximum => 100 }
  validates :cnpj, :presence => true
  validates :telefone, :presence => true
  validates :website, :presence => true
  
end
