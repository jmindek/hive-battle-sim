defmodule GangerTest do
  use ExUnit.Case

  test "Contains name, exp, and status." do
    %{name: name, exp: exp, status: status} = Ganger.create()

    assert Enum.find(Names.names, fn n -> name == n end)
    assert exp == 1
    assert status == :active
  end
end
