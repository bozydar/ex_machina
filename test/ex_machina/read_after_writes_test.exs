defmodule ExMachina.ReadAfterWritesTest do
  use ExMachina.EctoCase

  alias ExMachina.TestFactory
  alias ExMachina.Note

  test "insert/1 inserts the record into the repo and reads after writes" do
    model = TestFactory.insert(%Note{description: "An another description"})

    new_model = ExMachina.TestRepo.one!(Note)
    assert model.uuid
    assert model.uuid == new_model.uuid
  end
end
