class AdressChangeCode < ActiveRecord::Migration
  def change
    change_column :adresses, :code, :string, null: false
  end
end
