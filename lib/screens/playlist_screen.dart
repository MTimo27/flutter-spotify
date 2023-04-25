import 'package:flutter/material.dart';
import 'package:flutter_spotify/data/data.dart';
import 'package:flutter_spotify/widgets/widgets.dart';

class PlaylistScreen extends StatefulWidget {
  final Playlist playlist;

  const PlaylistScreen({super.key, required this.playlist});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 140.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: Icon(Icons.chevron_left,
                        size: 28.0, color: Theme.of(context).iconTheme.color),
                  )),
              const SizedBox(
                width: 16.0,
              ),
              InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: Icon(Icons.chevron_right,
                        size: 28.0, color: Theme.of(context).iconTheme.color),
                  )),
            ]),
          ),
          actions: [
            TextButton.icon(
              style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).iconTheme.color),
              icon: const Icon(Icons.account_circle_outlined, size: 30.0),
              onPressed: () {},
              label: const Text("Mihai"),
            ),
            const SizedBox(width: 8.0),
            IconButton(
              padding: const EdgeInsets.only(),
              icon: Icon(Icons.keyboard_arrow_down,
                  size: 30, color: Theme.of(context).iconTheme.color),
              onPressed: () {},
            ),
            const SizedBox(width: 20.0),
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                const Color(0xFFAF1018),
                Theme.of(context).colorScheme.background
              ],
                  stops: const [
                0,
                0.3
              ])),
          child: Scrollbar(
            thumbVisibility: true,
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
              children: [
                PlaylistHeader(playlist: widget.playlist),
                TracksList(tracks: widget.playlist.songs),
              ],
            ),
          ),
        ));
  }
}