defmodule HarmonizedSystemEx do
  @moduledoc """
  Documentation for HarmonizedSystemEx.
  """

  @doc """
  Return all Harmonized System Sections as an Array.

  ## Examples

      iex> sections = HarmonizedSystemEx.sections()
      iex> sections["1"]
      %{
        "section" => "1",
        "description" => "Live Animals Animal Products"
      }
      iex> sections["21"]
      %{
        "section" => "21",
        "description" => "Works of Art, Collectors' Pieces and Antiques"
      }
  """

  def sections do
    HarmonizedSystemEx.Sections.load()
  end

  @doc """
  Return all Harmonized System Sections as an Array.

  ## Examples

      iex> chapters = HarmonizedSystemEx.chapters()
      iex> chapters["01"]
      %{
        "section" => "1",
        "chapter" => "01",
        "description" => "Live animals"
      }
  """

  def chapters do
    HarmonizedSystemEx.Chapters.load()
  end


    @doc """
    Return all Harmonized System Sections as an Array.

    ## Examples

        iex> headings = HarmonizedSystemEx.headings()
        iex> headings["0101"]
        %{
          "chapter" => "01",
          "heading" => "0101",
          "description" => "HORSES, ASSES, MULES AND HINNIES, LIVE"
        }
    """

    def headings do
      HarmonizedSystemEx.Headings.load()
    end

    @doc """
    Return all Harmonized System Sections as an Array.

    ## Examples

        iex> subheadings = HarmonizedSystemEx.subheadings()
        iex> subheadings["010121"]
        %{
          "chapter" => "01",
          "heading" => "0101",
          "subheading" => "010121",
          "description" => "HORSES, LIVE, PUREBRED BREEDING"
        }
    """

    def subheadings do
      HarmonizedSystemEx.Subheadings.load()
    end
end
