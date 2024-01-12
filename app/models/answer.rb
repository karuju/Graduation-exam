class Answer < ApplicationRecord
  validates :body, presence: true

  belongs_to :user, presence: true
  belongs_to :board, presence: true
end
