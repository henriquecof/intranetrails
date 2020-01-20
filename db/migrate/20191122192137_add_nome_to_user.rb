# frozen_string_literal: true

class AddNomeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nome, :string
  end
end
