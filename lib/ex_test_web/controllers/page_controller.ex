defmodule ExTestWeb.PageController do
  use ExTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end
end
