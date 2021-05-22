class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]

    def coach_answer(your_message)
      motivation = "I can feel your motivation! "
      shout = your_message == your_message.upcase
      if your_message.include?("?")
        return "#{motivation if shout}Silly question, get dressed and go to work!"
      elsif your_message.casecmp?("I am going to work right now!")
        return "Great!"
      else
        return "#{motivation if shout}I don't care, get dressed and go to work!"
      end
    end

    @coach = coach_answer(params[:question])
  end
end
