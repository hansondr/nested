class CareersController < ApplicationController
  def index
    @careers = Career.all.order(:title)
  end

  def show
    @career = Career.find(params[:id])
  end

  def new
    @career = Career.new
  end

  def create
    @career = Career.new(career_params)
    if @career.save
      redirect_to careers_path, notice: 'Career created!'
    else
      render :new
    end 
  end

  def destroy
    Career.destroy(params[:id])
    redirect_to careers_path
  end

  private

  def career_params
    params.require(:career).permit(:title, :location, :description)
  end
end
