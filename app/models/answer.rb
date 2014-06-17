class Answer < ActiveRecord::Base
  belongs_to :question

  validates :creater, presence: true
  validates :body, length: {minimum: 50 }
end
