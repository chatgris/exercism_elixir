defmodule Teenager do
  import String, only: [ upcase: 1, ends_with?: 2]

  def hey("") do
    "Fine. Be that way!"
  end

  def hey(sentence) do
    cond do
      yelled?(sentence) ->
        "Woah, chill out!"
      questioned?(sentence) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp yelled?(sentence) do
    sentence == upcase(sentence)
  end

  defp questioned?(sentence) do
    ends_with?(sentence, "?")
  end
end
