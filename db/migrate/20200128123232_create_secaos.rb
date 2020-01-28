class CreateSecaos < ActiveRecord::Migration[6.0]
  def change
    create_table :secaos do |t|
        t.string :descricao

      t.timestamps
    end
  end
end
