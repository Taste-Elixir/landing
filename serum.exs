%{
  site_name: "Taste Elixir",
  site_description: "Taste Elixir website.",
  date_format: "{WDfull}, {D} {Mshort} {YYYY}",
  base_url: "/",
  author: "Adam Skołuda",
  author_email: "vexhelel@gmail.com",
  plugins: [
    {Serum.Plugins.LiveReloader, only: :dev}
  ]
}
