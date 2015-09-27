class AddTokenToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :token, :string
    add_column :accounts, :secret, :string
  end
end
