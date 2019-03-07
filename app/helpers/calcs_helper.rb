module CalcsHelper
  def result
    @result = case @operator
              when "addition"
                @num1 + @num2
              when "subtraction"
                @num1 - @num2
              when "multiplication"
                @num1 * @num2
              when "division"
                # 分母0でエラーメッセージを表示できるように三項演算子を使う
                @num2 == 0 ? "0で割ることはできません" : @num1 / @num2.to_f # to_fメソッドで割り切れない場合に対応する
              else
                "計算できません。演算子を正確に入力してください。"
              end
  end
end
