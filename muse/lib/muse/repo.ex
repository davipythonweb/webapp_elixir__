defmodule Muse.Repo do
  use Ecto.Repo,
    otp_app: :muse,
    adapter: Ecto.Adapters.Postgres
end
