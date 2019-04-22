use Croma

defmodule StackoverflowCloneE.Model.Answer do
  @moduledoc """
  Answer of StackoverflowCloneE app.
  """

  defmodule Body do
    use Croma.SubtypeOfString, pattern: ~r/\A[\s\S]{1,3000}\z/u
  end

  use AntikytheraAcs.Dodai.Model.Datastore, data_fields: [
    body:        Body,
    user_id:     StackoverflowCloneE.DodaiId,
    question_id: StackoverflowCloneE.DodaiId,
    comments:    StackoverflowCloneE.CommentList,
  ]
end
