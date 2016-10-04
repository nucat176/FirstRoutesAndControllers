class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name, null: false
      t.text :email, null: false
      t.timestamps
    end
    # add_index :email, unique: true
  end
end
