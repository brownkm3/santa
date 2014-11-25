class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :good, :default => true

      t.timestamps
    end
  end
end
