defmodule Beer do
  def sing(from, to // 0) do
    Enum.map_join(from..to, "\n", verse &1) <> "\n"
  end

  def verse(size) do
    """
    #{ String.capitalize(bottles(size)) } of beer on the wall, #{ bottles(size)
    #} of beer.
    #{ last_verse(size) }
    """
  end

  defp bottles(0),    do: "no more bottles"
  defp bottles(1),    do: "1 bottle"
  defp bottles(size), do: "#{size} bottles"

  defp last_verse(0) do
    "Go to the store and buy some more, 99 bottles of beer on the wall."
  end

  defp last_verse(1) do
    "Take it down and pass it around, no more bottles of beer on the wall."
  end

  defp last_verse(size) do
    "Take one down and pass it around, #{bottles(size - 1)} of beer on the wall."
  end
end
