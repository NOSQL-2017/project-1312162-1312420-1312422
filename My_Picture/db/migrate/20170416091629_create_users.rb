class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :email
      t.integer :sex
      t.string :avatar
      t.date :birthday
      t.text :address
      t.string :password_digest
      t.timestamps
    end
  end
end
