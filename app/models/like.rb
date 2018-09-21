class Like < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :prototype, dependent: :destroy
end
