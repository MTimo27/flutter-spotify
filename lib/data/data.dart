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
    title: 'm.A.A.d city',
    artist: 'Kendrick Lamar, MC Eiht',
    album: 'good kid, m.A.A.d city',
    duration: '5:50',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_1.jpg?alt=media&token=69c08b63-7767-4e78-8c53-ed3ec04d07b2',
  ),
  Song(
    id: '1',
    title: 'Verdask',
    artist: 'Dave',
    album: 'We\'re All Alone In This Together',
    duration: '3:02',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_2.png?alt=media&token=b2eba52c-a556-4df0-bad0-09009d6c3b89',
  ),
  Song(
    id: '2',
    title: 'No Role Modelz',
    artist: 'J. Cole',
    album: '2014 Forest Hills Drive',
    duration: '4:52',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_3.png?alt=media&token=bb428b2e-79fe-4b96-9d7a-7bedc49856bf',
  ),
  Song(
    id: '3',
    title: 'Heartless',
    artist: 'The Weeknd',
    album: 'After Hours',
    duration: '3:18',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_4.jpg?alt=media&token=831b3c9c-04c0-4c48-831f-f7ec4d8cc2eb',
  ),
  Song(
    id: '4',
    title: 'GATTI',
    artist: 'JACKBOYS',
    album: 'JACKBOYS',
    duration: '3:01',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_5.png?alt=media&token=8e97254f-2883-4b55-830d-e9bb6887dbf2',
  ),
  Song(
    id: '5',
    title: 'Rock Bottom',
    artist: 'Eminem',
    album: 'The Slim Shady LP',
    duration: '3:34',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_6.jpg?alt=media&token=5999f5fc-18e3-4f27-8339-4ce24872313b',
  ),
  Song(
    id: '6',
    title: 'I Can\'t Lose',
    artist: 'Erick the Architect',
    album: 'Future Proof EP',
    duration: '3:34',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_8.png?alt=media&token=aa98ce7a-07b5-4462-880f-1d8438fea17a',
  ),
  Song(
    id: '7',
    title: 'Khabib',
    artist: 'Central Cee',
    album: '23',
    duration: '3:21',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_20.png?alt=media&token=ac381acd-8c5e-46be-83ad-fcf5dd7482b8',
  ),
  Song(
    id: '8',
    title: 'Self Care',
    artist: 'Mac Miller',
    album: 'Swimming',
    duration: '5:45',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_9.jpg?alt=media&token=ca50f5bc-5eae-4c5b-9c1a-8d52f6097e12',
  ),
  Song(
    id: '9',
    title: 'Violent Crimes',
    artist: 'Kanye West',
    album: 'ye',
    duration: '3:35',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_11.png?alt=media&token=444e8da7-5f54-4588-9dd4-b051413c18c8',
  ),
  Song(
    id: '10',
    title: 'Toxic',
    artist: 'Oscar',
    album: 'Inapoi La Viata',
    duration: '2:03',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_13.jpg?alt=media&token=e258e633-472a-466e-9d7f-5f039d849dcd',
  ),
  Song(
    id: '11',
    title: 'Do Not Disturb',
    artist: 'Drake',
    album: 'More Life',
    duration: '4:43',
    cover:
        'https://firebasestorage.googleapis.com/v0/b/flutter-spotify-82896.appspot.com/o/cover_18.jpg?alt=media&token=ee04c302-3bef-41b7-9c33-1f16b93f7d8f',
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
