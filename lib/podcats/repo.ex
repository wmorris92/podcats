defmodule Podcats.Repo do
  use Ecto.Repo,
    otp_app: :podcats,
    adapter: Ecto.Adapters.Postgres
end
