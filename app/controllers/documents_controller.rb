class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def show
  end

  def edit
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to @document
    else
      render :new
    end
  end

  def update
    if @document.update(document_params)
      redirect_to @document
    else
      render :edit
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_path
  end

  private
  def document_params
    params.require(:document).permit(:title)
  end

  def set_document
    @document = Document.find(params[:id])
  end
end