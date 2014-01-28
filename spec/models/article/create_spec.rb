require 'spec_helper'

describe Article, '.create_article' do 

  it 'creates an article' do 
    expect { 
      Article.create_article('article 1', 'body of the article')
    }.to change(Article, :count).by 1
  end

end
