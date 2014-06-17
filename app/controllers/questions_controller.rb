class QuestionsController < ApplicationController
  def index
    @questions = Question.order("created_at DESC")
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
      if @question.save
        flash[:notice] = "You created a question!"
        redirect_to @question
      else
        render :new
      end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to @question
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      redirect_to '/questions'
    else
      redirect_to @question
    end
  end

  def question_params
    params.require(:question).permit(:subject, :body, :creater)
  end
end
