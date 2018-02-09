class AddTypeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :type, :string, default: 'User::Individual'
    add_column :users, :name, :string
  end
end
