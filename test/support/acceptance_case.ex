defmodule WallabyBug.AcceptanceCase do
  use ExUnit.CaseTemplate, async: true

  using do
    quote do
      use Wallaby.DSL

      import WallabyBug.Web.Router.Helpers
    end
  end

  setup _tags do
    # :ok = Ecto.Adapters.SQL.Sandbox.checkout(ScaryIsland.Repo)

    # unless tags[:async] do
    #   Ecto.Adapters.SQL.Sandbox.mode(ScaryIsland.Repo, {:shared, self()})
    # end

    # metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(ScaryIsland.Repo, self())
    {:ok, session} = Wallaby.start_session()
    {:ok, session: session}
  end
end
