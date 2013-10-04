class CreateRssFeeds < ActiveRecord::Migration
  def change
    create_table :rss_feeds do |t|
      t.string :title
      t.text :link
      t.text :description

      t.timestamps
    end
  end
end
