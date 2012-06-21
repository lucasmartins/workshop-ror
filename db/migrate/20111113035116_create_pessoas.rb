class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.integer :sexo
      t.references :empresa

      t.timestamps
    end
    add_index :pessoas, :empresa_id
  end
end
