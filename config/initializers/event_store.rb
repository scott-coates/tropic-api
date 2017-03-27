def instance_of(klass, *args)
  ->(event) { klass.new(*args).call(event) }
end


Rails.application.config.event_store.tap do |es|
end

AggregateRoot.configure do |config|
  config.default_event_store = Rails.application.config.event_store
end
