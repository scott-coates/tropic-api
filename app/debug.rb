artists = "ABC sdf
ABC sdf
ABCs sdf
".split(/\n+/)

artists = artists.collect &:strip

p artists
#
# lastfm = Lastfm.new(Rails.application.config.last_fm_api_key, Rails.application.config.last_fm_api_secret)
# sim = lastfm.artist.get_similar(artist: 'cher')
#
#
# p sim


#results =  request.search

class Search
  include AggregateRoot

  def initialize()
    @state = :new
  end

  def start
    @age * 0.5
  end
end

create_command = Command::SubmitRequest.new(request_id: SecureRandom.uuid, artists: artists)

# Command::Execute::execute(create_command)
