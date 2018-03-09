defmodule Membrane.Element.FFmpeg.SWResample.Mixfile do
  use Mix.Project

  def project do
    [app: :membrane_element_ffmpeg_swresample,
     compilers: ~w(bundlex.lib) ++ Mix.compilers,
     version: "0.0.1",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     description: "Membrane Multimedia Framework (FFmpeg SWResample Element)",
     maintainers: ["Marcin Lewandowski", "Mateusz Front"],
     licenses: ["LGPL"],
     name: "Membrane Element: FFmpeg SWResample",
     source_url: "git@github.com:membraneframework/membrane-element-FFmpeg-swresample.git",
     preferred_cli_env: [espec: :test],
     deps: deps()]
  end


  def application do
    [applications: [
    ], mod: {Membrane.Element.FFmpeg.SWResample, []}]
  end


  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib",]


  defp deps do
    [
      {:membrane_core, git: "git@github.com:membraneframework/membrane-core.git"},
      {:membrane_caps_audio_raw, git: "git@github.com:membraneframework/membrane-caps-audio-raw.git"},
      {:membrane_common_c, git: "git@github.com:membraneframework/membrane-common-c.git"},
      {:bundlex, git: "git@github.com:radiokit/bundlex.git"},
      {:espec, "~> 1.1.2", only: :test},
    ]
  end
end
