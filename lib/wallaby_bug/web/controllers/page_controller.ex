defmodule WallabyBug.Web.PageController do
  use WallabyBug.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
