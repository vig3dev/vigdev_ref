class DocsController < ApplicationController
  def index
    @docs = Doc.all
  end

  def show
    @doc = Doc.find(params[:id])
  end

  def new
    @doc = Doc.new
  end

  def create
    doc = Doc.create! params.require(:doc).permit(:title, :content)
    redirect_to docs_path
  end
end
