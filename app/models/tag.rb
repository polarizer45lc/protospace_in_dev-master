class Tag < ApplicationRecord
  has_many :prototype_tags
  has_many :prototypes, through: :prototype_tags
end
