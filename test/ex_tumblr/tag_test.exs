defmodule ExTumblr.TagTest do
  use ExUnit.Case, async: true
  alias ExTumblr.Tag

  test "tagged/2 creates a valid request" do
    {:get, "https://api.tumblr.com/v2/tagged", :api_key_auth} = Tag.tagged
  end
end
