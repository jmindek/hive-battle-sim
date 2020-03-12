defmodule TerritoryTest do
  use ExUnit.Case

  test "Returns 3 known territories." do
    actual_territories = Territory.get_territory(House.get_house())
    assert 3 = length(actual_territories)
  end

end
