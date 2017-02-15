defmodule Datatables.ZipController do
  use Datatables.Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
