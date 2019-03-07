class CalcsController < ApplicationController
  include CalcsHelper

  def show
    # http://localhost:3000/calcs/:num1/:operator/:num2
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @operator = params[:operator]

    # CalcsHelperのresultメソッドを呼び出す
    result
  end
end