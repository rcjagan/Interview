class RssReadersController < ApplicationController
  def reader
    @news_items = []
    Feed.all.collect do |feed|
      @news_items << RSS::Parser.parse(open(feed.url.to_s).read).items
    end
    
    @news_items = @news_items.flatten.sort{ |a,b| b.pubDate <=> a.pubDate}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @news_items }
    end
  end
end
