defmodule Muse.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MuseWeb.Telemetry,
      Muse.Repo,
      {DNSCluster, query: Application.get_env(:muse, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Muse.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Muse.Finch},
      # Start a worker by calling: Muse.Worker.start_link(arg)
      # {Muse.Worker, arg},
      # Start to serve requests, typically the last entry
      MuseWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Muse.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MuseWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
