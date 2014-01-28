require 'spec_helper'

describe ArticlesController do 

  describe 'GET /index' do 
    it 'assigns a list of articles' do 
      articles = [double(:article)] 
      stub_const('Blogger::Articles::ListAll', double(list_all:articles))
      get :index

      expect(assigns(:articles)).to eql articles
    end
  end

end
