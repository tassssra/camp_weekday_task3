class CalcsController < ApplicationController

  def show
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @operator = params[:operator]

    case @operator
    when "addition"
      @result = @num1 + @num2
    when "subtraction"
      @result = @num1 - @num2
    when "multiplication"
      @result = @num1 * @num2
    when "division"
      @result = @num1 / @num2.to_f
    end

  end

end
