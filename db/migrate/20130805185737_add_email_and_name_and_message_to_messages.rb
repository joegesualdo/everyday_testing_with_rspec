class AddEmailAndNameAndMessageToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :email, :string
    add_column :messages, :name, :string
  end
end
