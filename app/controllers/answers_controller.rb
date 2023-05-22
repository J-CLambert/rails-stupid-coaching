class AnswersController < ApplicationController
    def answer
        pattern = /!$/
        if params[:"user_answer"] == "I am going to work"
            @coach = "Great!"
        elsif pattern.match?(params[:"user_answer"])
            @coach = "Silly question, get dressed and go to work!"
        else
            @coach = "I don't care, get dressed and go to work!"
        end
        
        p"*******************************"
        p params
        @answer = params[:"user_answer"]
        p @answer
    end
end
