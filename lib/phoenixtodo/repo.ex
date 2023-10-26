defmodule Phoenixtodo.Repo do
  use Ecto.Repo,
    otp_app: :phoenixtodo,
    adapter: Ecto.Adapters.Postgres
end
