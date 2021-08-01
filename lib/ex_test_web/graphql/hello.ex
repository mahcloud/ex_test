defmodule ExTestWeb.Graphql.Resolvers.HelloResolver do
  def world(_root, _args, _info) do
    {:ok, %{world: "Hello world!"}}
  end
end
