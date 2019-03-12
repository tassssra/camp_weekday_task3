class CalcsController < ApplicationController
  include Common
  def show
    # http://localhost:3000/calcs/:num1/:operator/:num2
    @result =
      calculation(
        params[:operator],
        params[:num1].to_i,
        params[:num2].to_i
        )
  end
end
