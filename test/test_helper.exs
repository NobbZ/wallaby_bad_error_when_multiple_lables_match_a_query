# Prepare Wallaby
{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :base_url, WallabyBug.Web.Endpoint.url)

ExUnit.start()

