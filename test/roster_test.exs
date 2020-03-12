defmodule RosterTest do
  use ExUnit.Case

  test "A roster has a house, a gang of 1 or more gagners, and territory." do
    size = Enum.random 5..10
    %{house: house, gangers: gang, territory: territory} = Roster.create(size)

    assert size = length(gang)
    assert !Enum.empty?(house)
    assert !Enum.empty?(territory)
  end

end
