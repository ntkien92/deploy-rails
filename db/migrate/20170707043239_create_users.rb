class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
    	t.string :name
    	t.datetime :birthday
    	t.integer :gender
    	t.text :password_digest
      t.integer :role, default: 0
      t.string :avatar
      t.string :provider
    	t.string :uid

      t.timestamps
    end
  end
end
