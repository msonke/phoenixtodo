defmodule PhoenixtodoWeb.ItemHTML do
  use PhoenixtodoWeb, :html

  embed_templates "item_html/*"

  @doc """
  Renders a item form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def item_form(assigns)

    # add class "completed" to a list item if item.status=1
    def complete(item) do
      case item.status do
        1 -> "completed"
        _ -> "" # empty string means empty class so no style applied
      end
    end
end
