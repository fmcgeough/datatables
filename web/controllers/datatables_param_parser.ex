# Provide common code for parsing paging parameters
defmodule Datatables.DatatablesParamParser do
  def build_paging_info(params) do
    page_size = calculate_page_size(params["length"])
    page_number = calculate_page_number(params["start"], page_size)
    search_term = params["search"]["value"]
    draw_number = increment_draw(params["draw"])
    {page_size, page_number, draw_number, search_term}
  end

  defp increment_draw(value) when value == nil, do: 1
  defp increment_draw(value) do
    {draw_number, _} = Integer.parse(value)
    draw_number + 1
  end

  defp calculate_page_number(nil, _), do: 1
  defp calculate_page_number(value, page_size) do
    {start_value, _} = Integer.parse(value)
    round((start_value / page_size) + 1)
  end

  defp calculate_page_size(nil), do: 25
  defp calculate_page_size(value) do
    {page_size, _} = Integer.parse(value)
    page_size
  end
end
