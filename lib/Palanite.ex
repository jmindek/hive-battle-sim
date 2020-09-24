defmodule Palanite do
  @moduledoc """
  Functions for the Palanite Enforcers.
  """
  @comp %{
    leader: [alias: "Captain", min: 1, max: 1, cost: 110],
    champions: [alias: "Sergeant", min: 0, max: 3, cost: 90],
    gangers: [alias: "Patrolman", min: 0, max: nil, dependency: :juves, cost: 75],
    juves: [alias: "Rookie", min: 0, max: nil, cost: 25]
  }

  def get_comp_requirements() do
    @comp
  end
end
