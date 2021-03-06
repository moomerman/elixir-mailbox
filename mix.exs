defmodule Mailbox.MixProject do
  use Mix.Project

  def project do
    [
      app: :mailbox,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/moomerman/elixir-mailbox"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description, do: "A library for receiving mail in an elixir application"

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/moomerman/elixir-mailbox"}
    ]
  end
end
