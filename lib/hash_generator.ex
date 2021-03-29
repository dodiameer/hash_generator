defmodule HashGenerator do
  @doc """
  Generates a unique, URL-Safe, 11 character hash

  ## Examples
      iex> HashGenerator.gen_hash
      "XXXXXXXXXXX" # Unique, URL-Safe, 11 character hash
  """
  def gen_hash do
    :crypto.strong_rand_bytes(8)
    |> Base.url_encode64(padding: false)
  end
end
