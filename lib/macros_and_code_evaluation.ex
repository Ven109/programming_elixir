defmodule MacrosAndCodeEvaluation do
  defmacro times_n(n) do
    quote do
      def unquote(:"times_#{n}")(mult) do
        unquote(n) * mult
      end
    end
  end
end

defmodule Test do
  require MacrosAndCodeEvaluation

  MacrosAndCodeEvaluation.times_n(3)
end
