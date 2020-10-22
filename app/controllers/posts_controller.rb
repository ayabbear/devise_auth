class PostsController < ApplicationController
    def index
        @articles = Article.all
        @parameter = Article.find_by_username(params[:username])
    end
end
