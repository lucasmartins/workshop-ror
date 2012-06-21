class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :razao_social
      t.string :cnpj
      t.string :telefone
      t.string :website
      t.text :descricao

      t.timestamps
    end
  end
end
