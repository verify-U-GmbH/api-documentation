defmodule Server.MixProject do
  use Mix.Project

  def project do
    [
      app: :server,
      version: "0.2.2",
      elixir: "~> 1.11.2",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Main, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5.7"},
      {:phoenix_pubsub, "~> 2.0"},
      {:phoenix_html, "~> 2.14"},
      {:phoenix_live_reload, "~> 1.3.0"},
      {:gettext, "~> 0.18.2"},
      {:jason, "~> 1.2"},
      {:plug_cowboy, "~> 2.4.1"},
      {:phoenix_markdown, "~> 1.0.0"}
    ]
  end
end
