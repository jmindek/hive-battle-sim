defmodule RosterTest do
  use ExUnit.Case
  doctest Roster

  test "a roster is created" do
    size = Enum.random 5..10
    %{house: house, gangers: gang} = Roster.create(size)

    assert size = length(gang)
    assert !Enum.empty?(house)
  end
end
