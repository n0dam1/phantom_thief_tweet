class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    @image.save
  end

  def new
  end

  private

  def image_params
    params.require(:image).permit(:content)
  end
end
