class SpotifySearchService
  def initialize(artist_name, song_name)
    @artist_name = artist_name
    @song_name = song_name
  end

  def search
    artists = RSpotify::Artist.search(@artist_name)
    spotify_artist = artists.first
    if spotify_artist
      image_url = spotify_artist.images[1]['url']
      artist_uri = spotify_artist.uri

      # アーティストの全アルバムを取得
      offset = 0
      limit = 50
      unique_tracks = Set.new

      # アルバムを取得してトラックをセットに追加
      albums = spotify_artist.albums(limit: limit, offset: offset)
      albums.each do |album|
        album.tracks.each { |track| unique_tracks.add(track) }
      end
      matching_track = unique_tracks.find { |track| track.name == @song_name }

      # 残りのアルバムを取得するためにループ
      while !matching_track && (albums = spotify_artist.albums(limit: limit, offset: offset += limit)).any?
        albums.each do |album|
          album.tracks.each { |track| unique_tracks.add(track) }
        end
          matching_track = unique_tracks.find { |track| track.name == @song_name }
      end
      return { url: artist_uri, image: image_url, track: matching_track } if matching_track
    end
    nil # spotifyで見つからなかったらifを返す
  end
end
