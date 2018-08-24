defmodule HarmonizedSystemEx.Loader do

  require Logger

  def load_file(file_name) do
    Logger.info("load #{file_name}")
    file_name
    |> path()
    |> File.stream!()
    |> CSV.decode!(headers: true)
  end

  defp path(file_name) do
    Path.expand("data", __DIR__)
    |> Path.join(file_name)
  end
end
