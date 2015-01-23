class CreateOpens < ActiveRecord::Migration
  def change
    create_table :opens do |t|
      t.string :yelp
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :neighborhood
      t.string :website
      t.string :category
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
