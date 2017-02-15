defmodule Datatables.Repo.Migrations.CreateZips do
  use Ecto.Migration

  def change do
    create table(:zips) do
      add :zip_code,     :string
      add :city,    :string
      add :state,     :string

      timestamps()
    end
  end
end
