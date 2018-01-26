defmodule BlogApiWeb.Router do
  use BlogApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogApiWeb, as: :api do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/posts", PostController, only: [:index, :show]
    end
  end
end
