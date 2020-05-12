require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @r_name = params[:name].reverse
    @r_name
  end 

  get '/square/:number' do 
    @sqr = params[:number].to_i ** 2 
    # @sqr = params[:number].to_i * params[:number].to_i
    @sqr.to_s
  end 

  get '/say/:number/:phrase' do 
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" } 
    str
    # does there need to be a @ appended to this?
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1] 
    @word2 = params[:word2] 
    @word3 = params[:word3] 
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."  
  end 

  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    case @operation
    when "add"
      (@number1 + @number2).to_s
    when "subtract"
      (@number1 - @number2).to_s
    when "multiply"
      (@number1 * @number2).to_s
    when "divide" 
      (@number1 / @number2).to_s
    end 
  end 

end
