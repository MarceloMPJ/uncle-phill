defmodule UnclePhill.Repo do
  use Ecto.Repo,
    otp_app: :uncle_phill,
    adapter: Ecto.Adapters.Postgres
end
