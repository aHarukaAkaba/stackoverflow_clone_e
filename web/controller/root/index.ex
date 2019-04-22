use Croma

defmodule StackoverflowCloneE.Controller.Root.Index do
  use StackoverflowCloneE.Controller.Application

  defun index(conn :: Conn.t) :: Conn.t do
    Conn.render(conn, 200, "root/index", [])
  end
end
