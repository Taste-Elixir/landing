defmodule Landing.MixFile do
  use Mix.Project

  def project do
    [
      app: :landing,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:serum]
    ]
  end

  def compile_scss() do
    {:ok, css_content} = Sass.compile_file "assets/scss/style.scss"
    {:ok, file} = File.open("assets/css/style.css", [:write])
    :ok = IO.write(file, css_content)
  end

  defp deps do
    [
      {:serum, "~> 1.2"},
      {:sass, "~> 1.0"}
    ]
  end
end
