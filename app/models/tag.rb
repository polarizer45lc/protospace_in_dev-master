class Tag < ApplicationRecord
  has_many :prototype_tags, dependent: :destroy
  has_many :prototypes, through: :prototype_tags
end
