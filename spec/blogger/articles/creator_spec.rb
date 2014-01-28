require 'articles/creator' 

describe Blogger::Articles::Creator, '.create_article' do 
  let(:article_repo) { double :article } 
  let(:attr) { {title:'article 1', body: 'article body'} }

  it 'creates a new article' do 
    expect(article_repo).to receive(:create_article).with('article 1', 'article body')
    described_class.create_article(article_repo, attr)
  end

end
