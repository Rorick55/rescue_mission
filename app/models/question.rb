class Question < ActiveRecord::Base
  has_many :answers

  validates :creater, presence: true
  validates :subject, length: {minimum: 40}
  validates :body, length: {minimum: 150}
end

