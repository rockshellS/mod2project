class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :category
      t.integer :owner_id
      t.integer :recipient_id
      t.string :status

      t.timestamps
    end
  end
end
