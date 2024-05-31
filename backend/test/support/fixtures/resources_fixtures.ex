defmodule Backend.ResourcesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Backend.Resources` context.
  """

  @doc """
  Generate a resource.
  """
  def resource_fixture(attrs \\ %{}) do
    {:ok, resource} =
      attrs
      |> Enum.into(%{
        name: "some name",
        topic: "some topic"
      })
      |> Backend.Resources.create_resource()

    resource
  end
end
