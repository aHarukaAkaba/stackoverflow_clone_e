use Croma

defmodule StackoverflowCloneE.NonEmptyString do
  use Croma.SubtypeOfString, pattern: ~r"\A.+\Z"
end
