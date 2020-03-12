defmodule Ganger do
  @moduledoc """
  Create and modify gangers.
  """
  
  def create do
    %{name: Names.get_random, exp: 1, status: :active}
  end

end
