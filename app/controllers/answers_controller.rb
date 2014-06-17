class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])

    @answer = Answer.new(answer_params)

    @answer.question = @question
    if @answer.save
      flash[:notice] = "Your answer has been saved"
      redirect_to @question
    else
      render 'questions/show'
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @answer.question = @question
    if @answer.destroy
      flash[:notice] = "Answer has been deleted."
      redirect_to @question
    else
      flash[:notice] = "Answer could not be deleted."
      redirect_to @question
    end
  end

  def answer_params
    params.require(:answer).permit(:creater, :body)
  end

end
