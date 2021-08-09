class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = coach_answer_enhanced(params[:ask])
  end

  private

  def coach_answer(your_message)
    if your_message[-1] == '?'
      'Silly question, get dressed and go to work!'
    elsif your_message == 'I am going to work right now!'
      ''
    else
      'I don\'t care, get dressed and go to work!'
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == 'I am going to work right now!'.upcase
      ''
    elsif your_message == your_message.upcase
      "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end
end
