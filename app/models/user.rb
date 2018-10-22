class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, :sub_image1, :sub_image2, :sub_image3, :sub_image4,  UserImageUploader

  has_many :prototypes
  has_many :comments
  has_many :likes

  validates :name, presence: true
end
