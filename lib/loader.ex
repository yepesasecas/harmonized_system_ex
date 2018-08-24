defmodule HarmonizedSystemEx.Loader do

  require Logger

  def load_file(path) do
    Logger.info("load #{path}")
    path
    |> File.stream!()
    |> CSV.decode!(headers: true)
  end
end
