defmodule Boreray.EctoQuery.Filter.UndefinedValue do
  @moduledoc """
  Module for updating a query with undefined value
  """

  import Ecto.Query, only: [where: 3]

  @spec evaluate(Ecto.Query.t(), atom(), String.t()) :: Ecto.Query.t()
  def evaluate(query, _field, _op) do
    where(query, [x], false)
  end
end
