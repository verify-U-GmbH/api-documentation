defmodule Web.IndexController do
  use Web, :controller

  def index(conn, %{"name" => "api-reference"}) do
    conn = put_layout(conn, false)
    render(conn, "api-reference.html")
  end

  def index(conn, %{"name" => name}), do: render(conn, "#{name}.html")
  def index(conn, %{}), do: render(conn, "index.html")
end
