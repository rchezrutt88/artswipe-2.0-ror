module ImageUploaderHelper
  extend CarrierWave::MiniMagick

  def crop(cords)
    manipulate! do |img|
      img.crop!("#{cords.w}x#{cords.h}+#{cords.x1}+#{cords.y1}")
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
