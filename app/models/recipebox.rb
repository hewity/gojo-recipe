class Recipebox < ActiveRecord::Base
  has_many :instructions
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true, length: (minimum: 5, maximum: 100)
  validates :instruction, precence: true, length: (minimum: 20, maximum: 300)
  mount_uploader :picture. PictureUploader
  validate :picture_size

  private
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
