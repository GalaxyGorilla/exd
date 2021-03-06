defmodule Exd.Mixfile do
  use Mix.Project

  def project do
    [app: :exd,
     version: "0.1.0-dev",
     deps: deps,
     test_coverage: [tool: Coverex.Task, coveralls: true],
     compilers: [:erlang, :elixir, :app]]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :ecto, :ecto_migrate, :ecdo, :apix, :exometer_core],
     mod: {Exd, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:postgrex, ">= 0.0.0", optional: true},
     {:mariaex,  ">= 0.1.0", optional: true},
     {:ecto_it,  "~> 0.2.0", optional: true},
     {:jsx,      "~> 2.6.2"},
     {:hello, github: "travelping/hello", optional: true},
     {:exometer_core, github: "Feuerlabs/exometer_core", override: true},
     {:hackney, "~> 1.3.1", override: true},
     {:edown, github: "uwiger/edown", override: true},

     {:lager, "~> 2.1.1", override: true},
     {:exscript, "~> 0.0.1"},
     {:apix, "~> 0.1.0"},
     {:ecto_migrate, "~> 0.6.2"},
     {:poison, "~> 1.4.0"},
     {:ecdo, "~> 0.1.3"},

     {:coverex, "~> 1.4.3", only: :test},
     {:meck, "~> 0.8.2", override: true},
     {:mock, github: "jjh42/mock", only: :test},

     {:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.7", only: :dev},
     {:ecto_taggable, github: "xerions/ecto_taggable"}]
  end
end
