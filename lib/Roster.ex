defmodule Roster do
  @moduledoc """
  Roster retlated functions.
  """

  def create(gang_size \\ nil) do
    size = gang_size || size()
    %{
      house: get_house(),
      gangers: get_gangers(size, []),
    }
  end

  def size do
    Enum.random 5..10
  end
  
  def get_house do
    Enum.random [
      'Goliath',
      'Cawdor',
      'Genestealer Cult',
      'Orlock',
      'Corpse Grinder',
      'Palanite',
      'Escher',
      'Van Saar'
    ]
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
