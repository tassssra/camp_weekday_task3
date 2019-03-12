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
      begin
        "#{num1 / num2}..#{num1 % num2}" # 例外が発生する可能性がある処理
      rescue => e # 変数eに例外オブジェクトを格納
        e # 例外が発生した場合、変数eがcalculationメソッドの戻り値となって@resultに格納される
      end
    end
  end
end