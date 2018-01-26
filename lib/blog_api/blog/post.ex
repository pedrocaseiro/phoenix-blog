defmodule BlogApi.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias BlogApi.Blog.Post


  schema "posts" do
    field :is_published, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :is_published])
    |> validate_required([:title, :is_published])
  end
end
