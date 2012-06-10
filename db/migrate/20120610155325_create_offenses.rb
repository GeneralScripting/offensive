class CreateOffenses < ActiveRecord::Migration
  def change
    create_table :offenses do |t|
      t.integer :user_id
      t.string :body
      t.integer :score, :won, :lost, :default => 0

      t.timestamps
    end
    add_index :offenses, :user_id
    add_index :offenses, :score
    add_index :offenses, :won
    add_index :offenses, :lost
  end
end
