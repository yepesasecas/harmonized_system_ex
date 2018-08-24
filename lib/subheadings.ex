defmodule HarmonizedSystemEx.Subheadings do
  @moduledoc """
  Documentation for HarmonizedSystemEx.
  """

  alias HarmonizedSystemEx.Loader

  def load do
    Loader.load_file("subheadings.csv")
    |> define_struct()
  end

  defp define_struct(file) do
    Enum.reduce(file, %{}, fn(row, acc) -> Map.put(acc, row["subheading"], row) end)
  end
end
