defmodule InfoSys.Test.HTTPClient do
  require Logger
  @wolfram_xml File.read!("test/fixtures/wolfram.xml")

  def request(url) do
    url = to_string(url)
    Logger.warn("url #{url}")
    cond do
      String.contains?(url, "1%20+%201") ->
        {:ok, {[], [], @wolfram_xml}}
      true ->
        {:ok, {[], [], "<queryresult></queryresult>"}}
    end
  end
end
