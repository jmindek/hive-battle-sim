defmodule Names do
  @moduledoc """
  Collection of Ganger names.
  """
  
  def get_random do
    names() |> Enum.random
  end

  def names do
    [
      "Crusher",
      "Boneaxe",
      "Canthrite",
      "Snugs",
      "Magrite",
      "Thorgus"
    ]
  end
  
end
