defmodule Datatables.ZipApiView do
  use Datatables.Web, :view

  def render("index.json", %{zips: zips, draw_number: draw_number}) do
    %{ recordsTotal:  zips.total_entries,
       draw: draw_number,
       recordsFiltered: zips.total_entries,
       data: Enum.map(zips, &zip_json/1)
     }
  end

  def zip_json(zip) do
    %{
      zip_code: zip.zip_code,
      city: zip.city,
      state: zip.state
    }
  end
end
