class ArticlesController < ApplicationController
  def index
    @articles = Blogger::Articles::ListAll.list_all Article
  end
end
