class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :giver
      t.string :username
      t.boolean :santa
      t.string :password_digest

      t.timestamps
    end
  end
end
