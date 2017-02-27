defmodule ExMachina.TestRepo.Migrations.MigrateAll do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :admin, :boolean
      add :net_worth, :decimal
    end

    create table(:articles) do
      add :title, :string
      add :author_id, :integer
      add :editor_id, :integer
      add :publisher_id, :integer
      add :visits, :decimal
    end

    create table(:comments) do
      add :author, :map
      add :links, {:array, :map}, default: []
    end

    execute "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\""

    create table(:notes, primary_key: false) do
      add :uuid, :uuid, primary_key: true, default: fragment("uuid_generate_v1()")
      add :description, :text

      timestamps()
    end
  end
end
