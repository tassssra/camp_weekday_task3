module Common
  extend ActiveSupport::Concern
  def calculation(operator, num1, num2)
    case operator
    when "addition"
      num1 + num2
    when "subtraction"
      num1 - num2
    when "multiplication"
      num1 * num2
    when "division"
      # 分母0の時にメッセージを表示できるように三項演算子を使う
      # 割り算は分子か分母にto_fメソッドをつけないと出力が0になってしまう
      num2 == 0 ? "0で割ることはできません" : num1 / num2.to_f
    else
      "演算子を正確に入力してください。"
    end
  end
end
