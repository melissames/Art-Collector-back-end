require 'open-uri'
require 'rubygems'
require 'Rmagick'

class Api::V1::ColorsController < ApplicationController

  def create
    query = params[:q]

    @artwork = Artwork.find(query.to_i)
    image_url = @artwork.img
    image = Magick::Image.from_blob(open(image_url).read).first
    quant = image.quantize(10, Magick::RGBColorspace)
    palette = quant.color_histogram.sort { |a, b| a[1] <=> b[1] }

    total_depth = image.columns * image.rows

    results = []
    palette.count.times do |i|
      p = palette[i]
      r1 = p[0].red / 256
      g1 = p[0].green / 256
      b1 = p[0].blue / 256

      r2 = r1.to_s(16)
      g2 = g1.to_s(16)
      b2 = b1.to_s(16)

      r2 += r2 unless r2.length == 2
      g2 += g2 unless g2.length == 2
      b2 += b2 unless b2.length == 2

      rgb = "#{r1},#{g1},#{b1}"
      hex = "#{r2}#{g2}#{b2}"
      depth = p[1]

      results << {
        rgb: rgb,
        hex: hex,
        percent: ((depth.to_f / total_depth.to_f) * 100).round(2)
      }
    end

    render json: results

  end

end
