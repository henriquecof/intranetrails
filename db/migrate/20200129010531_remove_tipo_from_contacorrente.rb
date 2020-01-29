class RemoveTipoFromContacorrente < ActiveRecord::Migration[6.0]
  def change

    remove_column :contacorrentes, :tipo, :string
  end
end
