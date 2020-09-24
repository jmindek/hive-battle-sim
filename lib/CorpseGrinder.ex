defmodule CorpseGrinder do
  @moduledoc """
  Functions for the CorpseGrinder house.
  """
  @comp %{
    leader: [alias: "Butcher", min: 1, max: 1, cost: 110],
    champions: [alias: "Cutter", min: 0, max: 3, cost: 90],
    gangers: [alias: "Skinner", min: 0, max: nil, dependency: :juves, cost: 75],
    juves: [alias: "Initiate", min: 0, max: nil, cost: 25]
  }

  def get_comp_requirements() do
    @comp
  end
end
