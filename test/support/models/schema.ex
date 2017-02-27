defmodule ExMachina.Schema do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      @primary_key {:uuid, Ecto.UUID, read_after_writes: true}
      @foreign_key_type :uuid
    end
  end
end
