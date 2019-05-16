defmodule StackoverflowCloneE.Controller.Question.Show do
  use StackoverflowCloneE.Controller.Application
  alias StackoverflowCloneE.Dodai, as: SD
  alias StackoverflowCloneE.Controller.Question.Helper
  alias StackoverflowCloneE.Error.ResourceNotFoundError


  def show(%Antikythera.Conn{request: %Antikythera.Request{path_matches: %{id: get_id}}} = conn) do
    req = Dodai.RetrieveDedicatedDataEntityRequest.new(
      SD.default_group_id(),
      "Question",
      get_id,
      SD.root_key())
    res = Sazabi.G2gClient.send(conn.context, SD.app_id(), req)

    case res do
      %Dodai.RetrieveDedicatedDataEntitySuccess{body: doc} -> Conn.json(conn, 200, Helper.to_response_body(doc))
      %Dodai.ResourceNotFound{}                            -> ErrorJson.json_by_error(conn, ResourceNotFoundError.new())
    end
  end
end
