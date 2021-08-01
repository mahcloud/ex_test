defmodule ExTestWeb.Router do
  use ExTestWeb, :router

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

  scope "/" do
    pipe_through :api

    get("/hello", ExTestWeb.PageController, :index)
    #forward "/graphiql", Absinthe.Plug.GraphiQL, schema: ExTestWeb.Graphql.Schema

    #forward "/", Absinthe.Plug, schema: ExTestWeb.Graphql.Schema
  end

  # Other scopes may use custom stacks.
  # scope "/api", ExTestWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
end
