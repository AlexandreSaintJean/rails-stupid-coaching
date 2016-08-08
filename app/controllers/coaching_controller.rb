class CoachingController < ApplicationController


  def ask
  end

  def answer

    @query = params[:query]

    if  @query != @query.upcase
      @answer = coach_answer
    else
      @anwser = coach_answer_enhanced
    end
  end

private

  def coach_answer

    if @query.include? "?"
    return "Silly question, get dressed and go to work!"

    elsif @query == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced
    if @query == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    end
    if @query == @query.upcase
      return "I can feel your motivation! #{coach_answer}"
    else
      return coach_answer
    end
  end
end
