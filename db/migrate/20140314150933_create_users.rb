class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.integer :playlists
      t.integer :play_count
      t.boolean :subscriber
      t.text :country
      t.integer :age
      t.string :gender

      t.timestamps
    end

    add_index :users, :playlists
    add_index :users, :play_count
    add_index :users, :subscriber
    add_index :users, :country
    add_index :users, :age
    add_index :users, :gender
  end
end
