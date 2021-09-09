defmodule UnclePhillWeb.PageController do
  use UnclePhillWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
