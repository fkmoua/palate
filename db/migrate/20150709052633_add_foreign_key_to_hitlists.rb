class AddForeignKeyToHitlists < ActiveRecord::Migration
  def change
  	add_foreign_key :hitlists, :users
  end
end
