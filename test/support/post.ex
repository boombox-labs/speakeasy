defmodule SpeakeasyTest.Post do
  def authorize(:create_post, "chauncy", _), do: {:error, "No Chauncy's allowed"}
  def authorize(:create_post, _, _), do: :ok

  def authorize(:list_posts, _, _), do: true

  def authorize(:update_post, _, _), do: false

  def authorize(:delete_post, _, _), do: :error

  def authorize(:get_post, _, _), do: {:error, "TOO BAD"}
end
