defmodule Words do
  import String, only: [downcase: 1, split: 1]
  import Regex,  only: [replace: 3]

  def count(sentence) do
    sentence
      |> cleanup
      |> to_words
      |> build_dictionary
  end

  defp cleanup(sentence) do
    replace(%r{[^a-z0-9 ]}, downcase(sentence), "")
  end

  defp to_words(sentence), do: split(sentence)

  defp build_dictionary(words) do
    Enum.reduce words, HashDict.new, fn (word, acc) ->
      HashDict.update acc, word, 1, &1 + 1
    end
  end
end
