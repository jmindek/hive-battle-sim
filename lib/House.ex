defmodule House do
  @moduledoc """
  Functions for Houses
  """
  @houses %{
    goliath: %{name: "Goliath", home_base: "Settlement", comp_requirements: Goliath.get_comp_requirements()},
    palanite: %{name: "Palanite", home_base: "Precinct Fortress", comp_requirements: Palanite.get_comp_requirements()},
    corpsegrinder: %{name: "Corpse Grinder", home_base: "Chaos Fane", comp_requirements: CorpseGrinder.get_comp_requirements()}
  }

  def get_house() do
    # get a random house
    @houses |> Map.values |> Enum.random
  end

  def get_house(house_name) do
    # get a specific house
    @houses |> Map.get(house_name)
  end

  def get_houses() do
    @houses |> Map.values
  end
  
end
