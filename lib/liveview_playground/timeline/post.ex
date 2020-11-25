defmodule LiveviewPlayground.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :likes_count, :integer, default: 0
    field :reposts_count, :integer, default: 0
    field :username, :string, default: "Anthony"
    field :photo_urls, {:array, :string}, default: []

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body, :photo_urls])
    |> validate_required([:body])
    |> validate_length(:body, min: 2, max: 250)
  end
end
