defmodule Anagram do
  def match(canonical, words) do
    canonical = to_sorted_codepoints(canonical)
    Enum.filter(words, anagram?(canonical, &1))
  end

  defp anagram?(canonical, word) do
    canonical == to_sorted_codepoints(word)
  end

  defp to_sorted_codepoints(word) do
    word
     |> String.codepoints
     |> Enum.sort
  end
end
