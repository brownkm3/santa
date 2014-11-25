class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.text :description
      t.text :url
      t.integer :child_id

      t.timestamps
    end
  end
end
