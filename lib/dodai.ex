use Croma

defmodule StackoverflowCloneE.Dodai do
  app_id   = "a_BvqzN73e"
  group_id = "g_ntNqXYWs"

  use AntikytheraAcs.Dodai.GearModule,
    app_id:                app_id,
    default_group_id:      group_id,
    default_client_config: %{recv_timeout: 10_000}

  def app_key(),  do: StackoverflowCloneE.get_env("app_key")
  def root_key(), do: StackoverflowCloneE.get_env("root_key")
end
