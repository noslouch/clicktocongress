defmodule Clicktocongress.Mixfile do
  use Mix.Project

  def project do
    [app: :clicktocongress,
     version: "0.0.1",
     elixir: "~> 1.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Clicktocongress, []},
     applications: [
       :phoenix,
       :phoenix_pubsub,
       :phoenix_html,
       :cowboy,
       :logger,
       :gettext,
       :ex_twilio,
       :ex_twiml,
       :corsica,
       :postgrex,
       :phoenix_ecto]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.2.1"},
     {:phoenix_ecto, "~> 3.0"},
     {:phoenix_pubsub, "~> 1.0"},
     {:phoenix_html, "~> 2.6"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:postgrex, ">= 0.0.0"},
     {:gettext, "~> 0.11"},
     {:cowboy, "~> 1.0"},
     {:ex_twilio, "~> 0.2.1"},
     {:ex_twiml, "~> 2.1.2"},
     {:tesla, "~> 0.5.0"},
     {:poison, ">= 1.0.0"},
     {:hackney, "~> 1.6.3"},
     {:corsica, "~> 0.5"}
   ]
  end
end
