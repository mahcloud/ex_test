defmodule ExTestWeb.Resolvers.Content do
  def list_posts(_parent, _args, _resolution) do
    {:ok, ExTest.Content.list_posts()}
  end
end