defmodule Web.IndexController do
  use Web, :controller

  def index(conn, %{"name" => name}), do: render(conn, "#{name}.html")
  def index(conn, %{}), do: render(conn, "index.html")

end