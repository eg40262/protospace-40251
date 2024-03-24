class Comment < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :prototype, dependent: :destroy
  
  validates :text, presence: true
  validates :user, presence: true
  validates :prototype, presence: true
end
