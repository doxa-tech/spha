class ChangeColumnUserRemember < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :remembre_token, :remember_token
  end
end
