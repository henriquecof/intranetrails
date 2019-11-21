class CreateSetors < ActiveRecord::Migration[6.0]
  def change
    create_table :setors do |t|
      t.string :unidade
      t.string :empresa
      t.string :setor
      t.timestamps
    end
  end
end
