# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Datatables.Repo.insert!(%Datatables.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Datatables.Zip
alias Datatables.Repo

defmodule Datatables.Seeds do

  def store_it(row) do
    changeset = Zip.changeset(%Zip{}, row)
    Repo.insert!(changeset)
  end

end

current_dir = Path.dirname(__ENV__.file)
csv_file = "#{Path.expand("zip_codes.csv", current_dir)}"
File.stream!(csv_file)
  |> Stream.drop(1)
  |> CSV.decode(headers: [:zip_code, :city, :state])
  |> Enum.each(&Datatables.Seeds.store_it/1)
