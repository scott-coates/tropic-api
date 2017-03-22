artists = "ABC sdf
ABC sdf
ABCs sdf
".split(/\n+/)

artists = artists.collect &:strip

p artists

lastfm = Lastfm.new(Rails.application.config.last_fm_api_key, Rails.application.config.last_fm_api_secret)
sim = lastfm.artist.get_similar(artist: 'cher')

p sim
