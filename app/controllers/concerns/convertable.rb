module Convertable
  extend ActiveSupport::Concern

	WIDTH = 800
	HEIGHT = 418
	BACKGROUND_COLOR = 'black'
	POINTSIZE = 80
	TEXT_COLOR = 'white'
	FONT = '/System/Library/Fonts/ヒラギノ角ゴシック W4.ttc' # サーバーにフォント入れる必要あり

	def self.write_one_char(gc, imgl, char)
		gc.annotate(imgl,0,0,0,0,char) do
			self.fill = TEXT_COLOR
			self.pointsize = POINTSIZE
			self.font = FONT
		end
	end

	def self.make_background(imgl)
		imgl.new_image(WIDTH, HEIGHT){ self.background_color = BACKGROUND_COLOR }
	end
end
