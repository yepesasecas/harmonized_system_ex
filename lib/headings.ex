defmodule HarmonizedSystemEx.Headings do
  @moduledoc """
  Documentation for HarmonizedSystemEx.
  """

  alias HarmonizedSystemEx.Loader

  def load do
    Loader.load_file("./lib/data/headings.csv")
    |> define_struct()
  end

  defp define_struct(file) do
    Enum.reduce(file, %{}, fn(row, acc) -> Map.put(acc, row["heading"], row) end)
  end
end
