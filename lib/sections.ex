defmodule HarmonizedSystemEx.Sections do
  @moduledoc """
  Documentation for HarmonizedSystemEx.
  """

  alias HarmonizedSystemEx.Loader

  def load do
    Loader.load_file("./lib/data/sections.csv")
    |> define_struct()
  end

  defp define_struct(file) do
    Enum.reduce(file, %{}, fn(row, acc) -> Map.put(acc, row["section"], row) end)
  end
end
