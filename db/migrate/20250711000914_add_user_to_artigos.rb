class AddUserToArtigos < ActiveRecord::Migration[8.0]
  def change
    add_reference :artigos, :user, null: true, foreign_key: true
  end
end
