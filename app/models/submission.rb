class Submission < ApplicationRecord
  belongs_to :quiz
  has_many :submission_answers, dependent: :destroy
end
