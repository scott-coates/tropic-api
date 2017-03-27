module Command
  class SubmitRequest < Base
    attr_accessor :artists
    attr_accessor :request_id

    validates :artists, presence: true
    validates :request_id, presence: true
  end
end
