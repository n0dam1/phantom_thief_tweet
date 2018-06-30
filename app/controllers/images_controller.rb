class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to @image
    else
      render :new
    end
  end

  def new
  end

  def show
    @image = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:content)
  end
end
