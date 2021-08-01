defmodule ExTestWeb.Graphql.Schema do
  use Absinthe.Schema

  object :hello do
    field :world, :string
  end

  query do
    field :hello, non_null(:hello) do
      resolve &ExTestWeb.Graphql.Resolvers.HelloResolver.world/3
    end
  end
end
