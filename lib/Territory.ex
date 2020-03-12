defmodule Territory do
  @moduledoc """
  Territory related functions.
  """
  @territories [
    "Ash Gate",
    "Chaos Fane",
    "Fungal Sprawl",
    "Guilder Stronghold",
    "Hab Level",
    "Manufactorum Level",
    "Precinct Fortress",
    "Reclaimation Zones",
    "Settlement",
    "Slave Pitts",
    "Thermal Vent",
    "Underhive Shrine",
    "Wall Outpost",
    "Wastelands"
  ]

  def get_territory(house) do
    [
      @territories |> Enum.random,
      @territories |> Enum.random,
      house.home_base
    ]
  end

  def get_territories() do
    # Get raw list of territories
    @territories
  end
  
end
