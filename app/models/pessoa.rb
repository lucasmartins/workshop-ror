#encoding: utf-8
class Pessoa < ActiveRecord::Base
  belongs_to :empresa
  
  def canonical_sexo
    if self.sexo==1
      "♂"
    else
      "♀"
    end
  end
  
end
