defmodule Roster do
  @moduledoc """
  Roster retlated functions.

  Rosters contain a list of gangers, the affiliated House and it's attributes, and it's territory.
  """

  def create(gang_size \\ nil) do
    size = gang_size || randomize_size()
    house = House.get_house()
    %{
      gangers: get_gangers(size, []),
      house: house,
      territory: Territory.get_territory(house)
    }
  end

  def randomize_size do
    Enum.random 5..15
  end
  
  def get_gangers(0, acc) do
    acc
  end

  def get_gangers(index, acc) do
    get_gangers(
      index-1,
      [Ganger.create | acc]
    )
  end
end  
