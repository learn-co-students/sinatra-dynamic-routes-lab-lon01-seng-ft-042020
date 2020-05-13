require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
        params[:name].reverse
    end

    get '/square/:number' do
        (params[:number].to_i ** 2).to_s
    end

    get '/say/:number/:phrase' do
        quote = " "
        params[:number].to_i.times do
        quote += params[:phrase]
        end
        quote
      
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      int1 = params[:number1].to_i
      int2 = params[:number2].to_i
  
      case params[:operation]
      when 'add'
        answer = (int1 + int2).to_s
      when 'subtract'
        answer = (int1 - int2).to_s
      when 'multiply'
        answer = (int1 * int2).to_s
      else 'divide'
        answer = (int1 / int2).to_s
      end
    end


end