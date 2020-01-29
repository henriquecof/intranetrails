class AddAgenteIdToContacorrente < ActiveRecord::Migration[6.0]
  def change
    add_column :contacorrentes, :agente_id, :integer
  end
end
