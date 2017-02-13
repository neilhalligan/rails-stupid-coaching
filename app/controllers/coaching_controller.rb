class CoachingController < ApplicationController
  def answer
    question = params[:question]
      if question.upcase == question
        answer = coach_answer_enhanced(question)
      else
        answer = coach_answer(question)
      end
    @answer = answer
  end

  def ask
  end

  def home
  end

  def coach_answer(your_message)
  # print coach_answer_enhanced(your_message)
    if your_message.end_with? "?"
      "Silly question, get dressed and go to work!"
    elsif your_message.downcase == "i am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message.end_with? "?"
      "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message.downcase == "i am going to work right now!"
      return ""
    else
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end

end
