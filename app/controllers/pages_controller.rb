class PagesController < ApplicationController
  def index
    @text = Livro.new
  end

  def create
    @text = Livro.create
    redirect_to texto_path @text
  end

  def texto
    @text = Livro.find params[:id]
  end

  def update
    @text = Livro.find params[:id]
    @text.update_attributes params.require(:livro).permit(:texto)

    redirect_to texto_path @text
  end
end
