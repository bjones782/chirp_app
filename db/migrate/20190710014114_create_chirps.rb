class CreateChirps < ActiveRecord::Migration[5.2]
  def change
    create_table :chirps do |t|
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
