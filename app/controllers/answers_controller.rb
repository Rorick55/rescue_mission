class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])

    @answer = Answer.new(answer_params)

    @answer.question = @question
    @answer.save
    redirect_to "/questions/#{params[:question_id]}"
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.question = @question
    @answer.destroy


    redirect_to "questions/#{params[:question_id]}"
  end

  def answer_params
    params.require(:answer).permit(:creater, :body)
  end

end
