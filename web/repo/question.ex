use Croma

defmodule StackoverflowCloneE.Repo.Question do
  use AntikytheraAcs.Dodai.Repo.Datastore, [
    datastore_models: [StackoverflowCloneE.Model.Question],
  ]
end
