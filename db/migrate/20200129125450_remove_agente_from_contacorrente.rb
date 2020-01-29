class RemoveAgenteFromContacorrente < ActiveRecord::Migration[6.0]
  def change

    remove_column :contacorrentes, :agente, :string
  end
end
