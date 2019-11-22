# frozen_string_literal: true

class AddStatusToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :status, :integer
  end
end
