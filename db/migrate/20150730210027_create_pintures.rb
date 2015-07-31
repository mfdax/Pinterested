class CreatePintures < ActiveRecord::Migration
  def change
    create_table :pintures do |t|
      t.string :photo
      t.string :comment
      t.string :link
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
