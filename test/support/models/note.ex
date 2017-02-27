defmodule ExMachina.Note do
  use ExMachina.Schema

  schema "notes" do
    field :description

    timestamps()
  end
end
