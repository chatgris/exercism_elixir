defmodule Teenager do
  import String, only: [ upcase: 1, ends_with?: 2]

  def hey("") do
    "Fine. Be that way!"
  end

  def hey(sentence) do
    cond do
      upcase?(sentence) ->
        "Woah, chill out!"
      question?(sentence) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp upcase?(sentence) do
    sentence == upcase(sentence)
  end

  defp question?(sentence) do
    ends_with?(sentence, "?")
  end
end
