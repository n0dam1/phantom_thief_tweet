class ImagesController < ApplicationController
  include Convertable

  def create
    @image = Image.new(image_params)

    if @image.save
      imgl = Magick::ImageList.new
      gc = Magick::Draw.new
      gc.gravity = Magick::CenterGravity
      str = @image.content

      str.chars.each do |chr|
      	Convertable.make_background(imgl)
      	Convertable.write_one_char(gc, imgl, chr)
      end

      Convertable.make_background(imgl)
      Convertable.write_one_char(gc, imgl, str)

      imgl.delay = 40
      imgl.write('./app/assets/images/test.gif')

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
