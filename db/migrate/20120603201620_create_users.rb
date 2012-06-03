class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :locale
      t.string :image_url
      t.string :large_image_url
      t.string :small_image_url
      t.string :square_image_url
      t.string :facebook_idx
      t.integer :votes_count

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :username
    add_index :users, :locale
    add_index :users, :facebook_idx
    add_index :users, :votes_count
  end
end
