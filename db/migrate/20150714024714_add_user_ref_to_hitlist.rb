class AddUserRefToHitlist < ActiveRecord::Migration
  def change
  	add_reference :hitlists, :user, index: true, foreign_key: true
  end
end
