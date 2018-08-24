defmodule HarmonizedSystemEx do
  require Logger
  @moduledoc """
  Documentation for HarmonizedSystemEx.
  """

  @doc """
  Return all Harmonized System Sections as an Array.

  ## Examples

      iex> sections = HarmonizedSystemEx.sections()
      iex> sections["1"]
      "Live Animals Animal Products"
      iex> sections["21"]
      "Works of Art, Collectors' Pieces and Antiques"
  """

  def sections do
    load_sections()
  end

  def load_sections do
    Logger.info("loading sections")
    File.stream!("./lib/data/sections.csv")
    |> CSV.decode!(headers: true)
    |> Enum.reduce(%{}, fn(row, acc) -> Map.put(acc, row["section"], row["description"]) end)
  end
end
