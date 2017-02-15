defmodule Datatables.Router do
  use Datatables.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Datatables do
    pipe_through :browser # Use the default browser stack
    resources "/zips", ZipController, only: [:index]

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", Datatables do
    pipe_through :api

    resources "/zips", ZipApiController, only: [:index]
  end
end
