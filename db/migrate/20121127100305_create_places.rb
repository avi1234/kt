class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :lo
      t.decimal :la
      t.decimal :avg_stars

      t.timestamps
    end
  end
end
