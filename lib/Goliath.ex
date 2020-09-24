defmodule Goliath do
  @moduledoc """
  Functions for the Goliath house.
  """
  @comp %{
    leader: [min: 1, max: 1, cost: 110],
    champions: [min: 0, max: 3, cost: 90],
    gangers: [min: 0, max: nil, dependency: :juves, cost: 75],
    juves: [min: 0, max: nil, cost: 25]
  }

  def get_comp_requirements() do
    @comp
  end
end
