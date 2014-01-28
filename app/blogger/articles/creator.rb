module Blogger
  module Articles

    class Creator

      def self.create_article(article_repository, attr)
        new(article_repository).create_article(attr)
      end

      def initialize(article_repository)
        @article_repository = article_repository
      end

      def create_article(attr)
        article_repository.create_article(attr.fetch('title'),
                                          attr.fetch('body'))
      end

      private
      attr_reader :article_repository

    end

  end
end
