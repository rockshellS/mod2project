class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.boolean :claimed, default: false
      t.integer :owner_id
      t.integer :recipient_id


      t.timestamps
    end
  end
end
