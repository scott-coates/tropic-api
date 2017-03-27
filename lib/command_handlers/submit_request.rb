module CommandHandlers
  class SubmitRequest
    include Command::Handler

    def call(command)
      with_aggregate(Domain::Request, command.request_id) do |request|
        request.submit(command.request_id,)
      end
    end
  end
end
