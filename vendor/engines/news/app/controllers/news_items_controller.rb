class NewsItemsController < ApplicationController
  before_filter :find_page
  before_filter :find_published_news_items, :only => [:index]
  before_filter :find_news_item, :find_latest_news_items, :only => [:show]

  def index
    # render 'index'
  end

  def show
    # render 'show'
  end


protected

  def find_latest_news_items
    @news_items = NewsItem.latest.translated
  end

  def find_published_news_items
    @news_items = NewsItem.published.translated.paginate(:page => params[:page],
                                              :per_page => NewsItem.per_page)
  end

  def find_news_item
    @news_item = NewsItem.published.translated.find( params[:id])

    # trying to find next news item id for "next news item" link on news show page
    begin
      @next_item = NewsItem.select(:id).published.translated.where("news_items.id > ?", params[:id].to_i ).first
    rescue ActiveRecord::RecordNotFound
      @next_item = nil
    end

    # trying to find previous news item id for "prev news item" link on news show page
    begin
      @prev_item = NewsItem.select(:id).published.translated.where("news_items.id < ?", params[:id].to_i ).first
    rescue ActiveRecord::RecordNotFound
      @prev_item = nil
    end

  end

  # find page About -> News from refinery-CMS storage
  def find_page
    @page = Page.find_by_title("about").children.find_by_title("news")
  end

end
