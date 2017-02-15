defmodule Datatables.Repo do
  use Ecto.Repo, otp_app: :datatables
  use Scrivener, page_size: 25
end
