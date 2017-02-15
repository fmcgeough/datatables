defmodule Datatables.Zip do
  use Ecto.Schema

  schema "zips" do
    field :zip_code,  :string
    field :city,      :string
    field :state,     :string

    timestamps
  end

end
