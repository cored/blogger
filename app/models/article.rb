class Article < ActiveRecord::Base

  def self.create_article(title, body)
    create! title:title, body:body
  end
end
