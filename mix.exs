defmodule ExTumblr.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_tumblr,
     name: "ExTumblr",
     description: "A client for the Tumblr API v2.",
     source_url: "https://github.com/svarlet/ex_tumblr",
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  defp package do
    [licenses: ["MIT"],
     maintainers: ["Sébastien Varlet"]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.8.3"},
     {:poison, "~> 2.1"},
     {:oauther, "~> 1.0.2"},
     {:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.11", only: :dev},
     {:dialyxir, "~> 0.3", only: [:dev]},
     {:mix_test_watch, "~> 0.2", only: :dev},
     {:shouldi, "~> 0.3.0", only: :test},
     {:credo, "~> 0.3", only: [:dev, :test]}
    ]
  end
end
