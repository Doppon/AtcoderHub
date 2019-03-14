class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :title, presence: true
end
