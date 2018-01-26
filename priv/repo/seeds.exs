# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BlogApi.Repo.insert!(%BlogApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias BlogApi.Repo
alias BlogApi.Blog.Post

Repo.insert!(%Post{title: "Getting started with Phoenix and JSON API", is_published: true})
Repo.insert!(%Post{title: "Next steps with Phoenix and JSON API", is_published: false})
