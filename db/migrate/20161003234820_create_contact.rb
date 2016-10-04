class CreateContact < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :email
      t.integer :user_id, null: false

    end
    add_index :contacts, :user_id, unique: true
  end
end
