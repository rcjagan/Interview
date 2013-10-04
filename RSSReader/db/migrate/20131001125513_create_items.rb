class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :link
      t.text :description
      t.references :rss_feed

      t.timestamps
    end
  end
end
