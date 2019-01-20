defmodule OauthWeb.PageController do
  use OauthWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
