class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :opinion, :string
    add_column :users, :introduction, :string
  end
end
