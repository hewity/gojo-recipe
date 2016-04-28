class Recipebox < ActiveRecord::Base
  has_many :instructions
  belongs_to :user
  # validates :user_id, presence: true
  # validates :title, presence: true
  # validates :instraction, precence: true
end
