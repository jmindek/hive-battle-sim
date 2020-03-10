defmodule GangerTest do
  use ExUnit.Case
  doctest Ganger

  test "Contains name, exp, and status." do
    assert Ganger.create() == {name: "Crusher", exp: 1, status: :active}
  end
end
