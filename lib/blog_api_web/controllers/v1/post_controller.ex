defmodule BlogApiWeb.V1.PostController do
  use BlogApiWeb, :controller

  alias BlogApi.Blog

  action_fallback BlogApiWeb.FallbackController

  def index(conn, _params) do
    posts = Blog.list_posts()
    render(conn, "index.json", posts: posts)
  end

  def show(conn, %{"id" => id}) do
    post = Blog.get_post!(id)
    render(conn, "show.json", post: post)
  end
end
