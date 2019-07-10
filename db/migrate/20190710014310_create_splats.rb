class CreateSplats < ActiveRecord::Migration[5.2]
  def change
    create_table :splats do |t|
      t.integer :chirp_id
      t.integer :user_id
      t.integer :count

      t.timestamps
    end
  end
end
