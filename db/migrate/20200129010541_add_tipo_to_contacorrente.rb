class AddTipoToContacorrente < ActiveRecord::Migration[6.0]
  def change
    add_column :contacorrentes, :tipo, :integer
  end
end
