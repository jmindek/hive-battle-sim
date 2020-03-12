defmodule House do
  @moduledoc """
  Functions for Houses
  """
  @houses %{
    goliath: %{name: "Goliath", home_base: "Settlement", comp_requirements: nil},
    palanite: %{name: "Palanite", home_base: "Precinct Fortress", comp_requirements: nil}
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
