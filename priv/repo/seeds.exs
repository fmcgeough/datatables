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
Repo.insert! %Player{ name: "Mark",  date_of_birth: %Ecto.Date{ year: 1970,  month: 1,   day:  2 }}
