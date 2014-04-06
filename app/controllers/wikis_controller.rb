class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
    authorize @wikis
  end

  def new
    @wiki = Wiki.new
    authorize @wiki
  end

  def show
    @wiki = Wiki.find(params[:id])
    authorize @wiki
  end

  def edit
    @wiki = Wiki.find(params[:id])
    authorize @wiki
  end

  def create
    @wiki = Wiki.new(params.require(:wiki).permit(:name, :description, :public))
    authorize @wiki
    if @wiki.save
      redirect_to @wiki, notice: "Wiki was saved successfully."
    else
      flash[:error] = "Error creating wiki. Please try again."
      render :new
    end
  end

  def update
    @wiki = Wiki.find(params[:id])
    authorize @wiki
    if @wiki.update_attributes(params.require(:wiki).permit(:name, :description, :public))
      redirect_to @wiki
    else
      flash[:error] = "Error saving wiki. Please try again"
      render :edit
    end
  end
end