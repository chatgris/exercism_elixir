defmodule Teenager do
  import String, only: [ upcase: 1, ends_with?: 2]

  def hey(sentence) do
    cond do
      empty?(sentence) ->
        "Fine. Be that way!"
      yelled?(sentence) ->
        "Woah, chill out!"
      questioned?(sentence) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp empty?(sentence) do
    sentence == ""
  end

  defp yelled?(sentence) do
    sentence == upcase(sentence)
  end

  defp questioned?(sentence) do
    ends_with?(sentence, "?")
  end
end
