class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answer = coach_answer
  end

  def coach_answer
    if @questions == 'I am going to work'
      'great'
    elsif @questions.end_with?('?')
      'Silly question, get dressed and go to work!.'
    else
      'I dont care, get dressed and go to work!.'
    end
  end
end
