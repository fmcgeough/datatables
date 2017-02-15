defmodule Datatables.Zip do
  use Ecto.Schema
  import Ecto.Changeset

  schema "zips" do
    field :zip_code,  :string
    field :city,      :string
    field :state,     :string

    timestamps
  end

  @required_fields ~w(zip_code city state)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields)
  end
end
