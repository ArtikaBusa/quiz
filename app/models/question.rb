class Question < ApplicationRecord
  belongs_to :quiz
  has_many :mcq_options, dependent: :destroy
  has_many :submission_answers, dependent: :destroy

  enum :question_type, {
    mcq: 0,
    boolean: 1,
    text: 2
  }

  validates :content, :question_type, presence: true
end
