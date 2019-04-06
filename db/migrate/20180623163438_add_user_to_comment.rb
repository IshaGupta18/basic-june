class AddUserToComment < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :User, foreign_key: true
  end
end
