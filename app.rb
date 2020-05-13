require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @p = params[:phrase]
    @num.times do
      "@p"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    t = ""
     case params[:operation]

     when "addition"
      t = "#{@num1 + @num2}"
     when "subtraction"
     t = "#{@num2 - @num1}"
     when "multiplication"
     t = "#{@num2 * @num1}"
     when "division"
      t = "#{@num2 / @num1}"
     end
     t
  end
end