const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'lofi hip hop music - beats to relax/study to',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;
  final String cover;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
    required this.cover,
  });
}

const _lofihiphopMusic = [
  Song(
    id: '0',
    title: 'Snowman',
    artist: 'WYS',
    album: '1 Am. Study Session',
    duration: '3:15',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '1',
    title: 'Healthy Distraction',
    artist: 'less.people',
    album: 'One Day It\'s Over',
    duration: '2:18',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '2',
    title: 'Far Away',
    artist: 'Mila Coolness',
    album: 'Silent River',
    duration: '2:39',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '3',
    title: 'Call You Soon',
    artist: 'Louk, Glimlip',
    album: 'Can We Talk',
    duration: '2:35',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '4',
    title: 'Winter Sun',
    artist: 'Bcalm, Banks',
    album: 'Feelings',
    duration: '2:15',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '5',
    title: 'Hope',
    artist: 'No Spirit',
    album: 'Memories We Made',
    duration: '1:57',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '6',
    title: 'A Better Place',
    artist: 'Project AER, cxit.',
    album: 'Growth Patterns',
    duration: '2:00',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '7',
    title: 'Misty Dawn',
    artist: 'BluntOne',
    album: 'Autumn in Budapest',
    duration: '2:34',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '8',
    title: 'Hourglass',
    artist: 'Thaehan',
    album: 'Hourglass',
    duration: '1:43',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '9',
    title: 'After Sunset',
    artist: 'Project AER, WYS',
    album: '3 Am. Study Session',
    duration: '2:41',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '10',
    title: 'Child',
    artist: 'Ambulo',
    album: 'Polar',
    duration: '2:12',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
  Song(
    id: '11',
    title: 'Arizona Zero',
    artist: 'WYS, Sweet Medicine',
    album: 'Evermore',
    duration: '2:31',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.png?alt=media&token=47cd7e88-2a36-49c1-af9e-a4f54ba07c37',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

const lofihiphopPlaylist = Playlist(
  id: '5-playlist',
  name: 'Everything',
  imageURL:
      'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/playlist_cover.png?alt=media&token=7c825f7e-3bcd-4961-b1da-d8a0571aecba',
  description: 'Some of my favourite songs, a bit of everything in a playlist.',
  creator: 'Mihai',
  duration: '28 min',
  followers: '2700',
  songs: _lofihiphopMusic,
);
