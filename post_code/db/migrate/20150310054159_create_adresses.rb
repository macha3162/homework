class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.integer :code
      t.string :prefecture
      t.string :city
      t.string :area

      t.timestamps null: false
    end
  end
end
