defmodule PodcatsWeb.PageController do
  use PodcatsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
