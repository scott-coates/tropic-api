artists = "ABC sdf
ABC sdf
ABCs sdf
".split(/\n+/)

artists = artists.collect &:strip

p artists
