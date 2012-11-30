class CreateTicks < ActiveRecord::Migration
  def change
    create_table :ticks do |t|
      t.integer :user_id
      t.string :comment
      t.integer :stars
      t.integer :place_id

      t.timestamps
    end
  end
end
