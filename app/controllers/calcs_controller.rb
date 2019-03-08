class CalcsController < ApplicationController
  include Common

  def show
    # http://localhost:3000/calcs/:num1/:calc/num2
    # Commonモジュールからcalculationメソッドを呼び出す
    calculation
  end

end