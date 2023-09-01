import 'package:flutter/material.dart';
import 'package:reproductor/config/audioPlayer.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  final int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          renderView(
              0,
              const MediaPlayer()),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.1),
                      Colors.black.withOpacity(0),
                    ]
                )
            ),
          )
        ],
      ),
    );
  }
  Widget renderView(int tabIndex,Widget view){
    return  IgnorePointer(
      ignoring: _selectedTab !=tabIndex,
      child: Opacity(opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
