artists = "ABC sdf
ABC sdf
ABCs sdf
".split(/\n+/)

artists = artists.collect &:strip

p artists

p Rails.application.config.last_fm_api_secret
