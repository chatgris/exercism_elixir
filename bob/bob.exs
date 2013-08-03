defmodule Teenager do
  def hey(sentence) do
    cond do
      sentence == "" ->
        "Fine. Be that way!"
      sentence == String.upcase(sentence) ->
        "Woah, chill out!"
      String.ends_with?(sentence, "?") ->
        "Sure."
      true ->
        "Whatever."
    end
  end
end
