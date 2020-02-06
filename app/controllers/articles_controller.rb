class ArticlesController < ApplicationController

  def new

  end

  # articles#create - articles_path - /articles
  def create
    # byebug
    render plain: params[:article].inspect
  end

end


# articles_path
# /articles	  articles#index MOSTRAR TODOS OS ARTICLES
# /articles   articles#create    form { form.submit }   CRIAR, SALVAR NO BANCO