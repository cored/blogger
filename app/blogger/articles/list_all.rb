module Blogger
  module Articles
    class ListAll

      def self.list_all(article_repository)
        new(article_repository).list_all
      end

      def initialize(article_repository)
        @article_repository = article_repository
      end

      def list_all
        article_repository.all
      end

      private
      attr_reader :article_repository

    end
  end
end
