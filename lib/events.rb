module Events
  ItemAddedToBasket = Class.new(RailsEventStore::Event)
  ItemRemovedFromBasket = Class.new(RailsEventStore::Event)
  OrderSubmitted = Class.new(RailsEventStore::Event)
  RequestSubmitted = Class.new(RailsEventStore::Event)
  OrderExpired = Class.new(RailsEventStore::Event)
end
