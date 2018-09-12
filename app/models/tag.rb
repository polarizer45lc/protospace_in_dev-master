class Tag < ApplicationRecord
  has_many :prototypes, through: :ptototype_tags
  has_many :prototypes
end
