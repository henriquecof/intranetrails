class CreateAgentes < ActiveRecord::Migration[6.0]
  def change
    create_table :agentes do |t|
      t.string :nome
      t.string :fone
      t.string :endereco
      t.string :uf
      t.string :cidade
      t.string :tipo
      t.string :cpfcnpj
      t.string :email

      t.timestamps
    end
  end
end
