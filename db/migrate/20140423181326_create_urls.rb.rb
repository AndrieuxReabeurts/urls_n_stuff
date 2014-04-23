class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |category|
      category.string :long_url
      category.string :short_url
      category.timestamps
    end
  end
end
