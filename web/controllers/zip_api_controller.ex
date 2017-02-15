defmodule Datatables.ZipApiController do
  use Datatables.Web, :controller
  alias Datatables.Zip
  alias Datatables.DatatablesParamParser

  def index(conn, params) do
    {page_size, page_number, draw_number, search_term} = DatatablesParamParser.build_paging_info(params)
    zips = retrieve_zips(page_size, page_number, search_term)
    render(conn, :index,
           zips: zips,
           page_number: page_number,
           draw_number: draw_number)
  end

  defp retrieve_zips(page_size, page_number, search_term) do
    query = from z in Zip,
    select: struct(z, [:zip_code, :city, :state ])
    query = add_filter(query, search_term)
    Datatables.Repo.paginate(query, page: page_number, page_size: page_size)
  end

  defp add_filter(query, search_term) when search_term == nil or search_term == "", do: query
  defp add_filter(query, original_search_term) do
    search_term = "#{original_search_term}%"
    from z in query,
    where: like(z.zip_code, ^search_term) or like(z.city, ^search_term)
  end

end
