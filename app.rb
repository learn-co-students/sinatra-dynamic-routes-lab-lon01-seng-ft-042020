require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name_reversed = params[:name].reverse
    "#{name_reversed}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    sq = num**2
    "#{sq}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    ret = ""
    num.times do
      ret = params[:phrase] + ret
      #binding.pry
    end
    ret
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == "add"
      total = (num1 + num2)
    elsif op == "subtract"
      total = (num1 - num2)
    elsif op == "multiply"
      total = (num1 * num2)
    elsif op == "divide"
      total = (num1 / num2)
    end 
    total.to_s

  end

end