class UpdateUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :name, :email
      t.text :username, null: false, default: "lksjd"
    end
    add_index :users, :username, unique: true
  end
end
