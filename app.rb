require_relative 'config/environment'
#require "pry"
class App < Sinatra::Base

  #Renders the name backwards
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  #Renders the square of the number
  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  #Repeats the phrase n times
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    say = [ ]

    @number.times do
      say << @phrase
    end

    say
  # binding.pry
  end

  #Concatenates the words and adds a period
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1] + " "
    @word2 = params[:word2] + " "
    @word3 = params[:word3] + " "
    @word4 = params[:word4] + " "
    @word5 = params[:word5] 
    "#{@word1.concat(@word2, @word3, @word4, @word5)}."

  end

  #Performs the operation on the two numbers
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    result = " "

    if @operation == 'add'
      result = "#{@number1 + @number2}"
    elsif @operation == 'subtract'
      result = "#{@number1 - @number2}"
    elsif @operation == 'multiply'
      result = "#{@number1 * @number2}"
    elsif @operation == 'divide'
      result = "#{@number1 / @number2}"
    else
      result = 'Unable to perform this operation'
    end
  end

end