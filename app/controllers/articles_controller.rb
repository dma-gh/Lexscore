class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save!

		redirect_to @article
	end

	def show
		@article = Article.find(params[:id])
	end

	def score

		analyzer = Sentimental.new
		analyzer.load_defaults

		@article = Article.find(params[:id])
		@article.score = analyzer.score(@article.text)

		@article.save!

		redirect_to @article

	end

	private
	def article_params
		params.require(:article).permit(:title, :text, :score, :url, :publication, :tags)
	end
end
