class Image < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, PictureUploader
  validate :picture_size, :stored_images

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "size should be less than 5MB")
    end
  end

  def stored_images
    if Image.all.count >= 100
      errors.add(:picture, "Whoops, something went wrong, try contacting me at joaquinberon2000@gmail.com")
    end
  end
end
