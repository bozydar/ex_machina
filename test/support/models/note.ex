defmodule ExMachina.Note do
  use Ecto.Schema

  @primary_key {:uuid, Ecto.UUID, read_after_writes: true}
  @foreign_key_type :uuid
  schema "notes" do
    field :description

    timestamps()
  end
end
