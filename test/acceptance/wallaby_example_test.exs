defmodule WallabyBug.Web.WallabyExample do
  use WallabyBug.AcceptanceCase

  test "it can't fill a form", %{session: session} do
    session
    |> visit("/")
    |> fill_in(Query.text_field("field"), with: "text")
    |> fill_in(Query.text_field("other field"), with: "more text")
    |> text
  end

  test "it can fill a form", %{session: session} do
    session
    |> visit("/")
    |> fill_in(Query.css("#field1"), with: "text")
    |> fill_in(Query.css("#field2"), with: "more text")
    |> text
  end
end
