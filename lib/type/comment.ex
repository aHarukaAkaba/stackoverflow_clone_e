use Croma

defmodule StackoverflowCloneE.Comment do
  defmodule Body do
    use Croma.SubtypeOfString, pattern: ~r/\A[\s\S]{1,1000}\z/u
  end
  use Croma.Struct, recursive_new?: true, fields: [
    id:         StackoverflowCloneE.DodaiId,
    body:       Body,
    user_id:    StackoverflowCloneE.DodaiId,
    created_at: Croma.String,
  ]
end

defmodule StackoverflowCloneE.CommentList do
  use Croma.SubtypeOfList, elem_module: StackoverflowCloneE.Comment
end
