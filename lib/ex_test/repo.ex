defmodule ExTest.Repo do
  use Ecto.Repo,
    otp_app: :ex_test,
    adapter: Ecto.Adapters.Postgres
end
