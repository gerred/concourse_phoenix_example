defmodule ConcoursePhoenixExample.PageController do
  use ConcoursePhoenixExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
