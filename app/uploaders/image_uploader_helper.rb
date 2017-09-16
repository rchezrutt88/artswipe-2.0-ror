module ImageUploaderHelper
  extend CarrierWave::MiniMagick

  def crop x1, y1, x2, y2, w, h
    manipulate! do |img|
      img.crop!("#{w}x#{h}+#{x1}+#{y1}")
    end

    # if model.crop_x.present?
    #   manipulate! do |img|
    #     x = model.crop_x.to_i
    #     y = model.crop_y.to_i
    #     w = model.crop_w.to_i
    #     h = model.crop_h.to_i
    #     img.crop!(x, y, w, h)
    #   end
    # end
  end

end