require 'articles/list_all'

describe Blogger::Articles::ListAll, '.list_all' do 
  let(:article_repo) { double :article } 

  it 'returns all the articles saved' do 
    expect(article_repo).to receive(:all)
    described_class.list_all article_repo
  end

end
