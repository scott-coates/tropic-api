module Command
  module Execute
    module_function

    def execute(command)
      command.validate!
      handler_for(command).call(command)
    end

#    private - doesn't work
    def handler_for(command)
      {
        Command::SubmitRequest => CommandHandlers::SubmitRequest.new,
      }.fetch(command.class)
    end
  end
end

