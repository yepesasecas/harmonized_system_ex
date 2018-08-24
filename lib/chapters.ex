defmodule HarmonizedSystemEx.Chapters do
  @moduledoc """
  Documentation for HarmonizedSystemEx.
  """

  alias HarmonizedSystemEx.Loader

  def load do
    Loader.load_file("chapters.csv")
    |> define_struct()
  end

  defp define_struct(file) do
    Enum.reduce(file, %{}, fn(row, acc) -> Map.put(acc, row["chapter"], row) end)
  end
end
