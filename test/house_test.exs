defmodule HouseTest do
  use ExUnit.Case

  test "House contains name, home_base, and comp requirements." do
    %{name: name, home_base: home_base, comp_requirements: comp_req} = House.get_house()

    assert Enum.find(House.get_houses(), fn %{name: n} -> name == n end)
    assert home_base == Enum.find(
      ["Chaos Fane", "Precinct Fortress", "Settlement"],
      fn base -> base == home_base end
    )
    assert comp_req == nil
  end
end
