class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :password_digest
      t.integer :age
      t.string  :email
      t.string  :interest
      t.string  :gender

      t.timestamps
    end
  end
end
