class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :submit]

  def index
    @quizzes = Quiz.all
  end

  def show
    if params[:submission_id].present?
      @submission = @quiz.submissions.includes(submission_answers: :question).find_by(id: params[:submission_id])
    end
  end

  def submit
    answers = params[:answers] || {}

    score = 0

    submission = @quiz.submissions.create!

    answers.each do |question_id, user_answer|
      question = @quiz.questions.find(question_id)

      correct = case question.question_type
      when "mcq"
        question.mcq_options.where(correct: true).pluck(:text).include?(user_answer)
      when "boolean"
        question.correct_boolean_answer.to_s == user_answer
      when "text"
        question.correct_text_answer.to_s.strip.downcase ==
          user_answer.to_s.strip.downcase
      end

      score += 1 if correct

      submission.submission_answers.create!(
        question: question,
        answer: user_answer
      )
    end

    submission.update!(score: score)

    redirect_to quiz_path(@quiz, submission_id: submission.id), notice: "Quiz submitted! Your score: #{score}"
  end

  private

  def set_quiz
    @quiz = Quiz.includes(:questions).find_by(id: params[:id])
  end
end
