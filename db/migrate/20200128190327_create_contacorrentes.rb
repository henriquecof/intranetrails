class CreateContacorrentes < ActiveRecord::Migration[6.0]
  def change
    create_table :contacorrentes do |t|
      t.string :tipo
      t.string :descricao
      t.string :banco
      t.string :agencia
      t.string :agente

      t.timestamps
    end
  end
end
