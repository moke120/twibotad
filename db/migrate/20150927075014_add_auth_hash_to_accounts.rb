class AddAuthHashToAccounts < ActiveRecord::Migration
  def change 
    add_column :accounts, :provider, :string
    add_column :accounts, :uid, :string
    add_column :accounts, :nickname, :string
    add_column :accounts, :image_url, :string
  end
end
