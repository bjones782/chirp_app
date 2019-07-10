class CreateSquwaks < ActiveRecord::Migration[5.2]
  def change
    create_table :squwaks do |t|
      t.integer :chirp_id
      t.integer :user_id
      t.integer :count

      t.timestamps
    end
  end
end
