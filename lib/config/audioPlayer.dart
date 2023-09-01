
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reproductor/controller/player_controller.dart';


class MediaPlayer extends StatefulWidget {
  const MediaPlayer({super.key});

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PlayerController());

    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 100,
            itemBuilder:(BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 4,left:5,right: 5,top: 5),
                child: const ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0), // Radio de curvatura para los bordes
                    ),
                  ),

                  title: Text("data"),
                  subtitle: Text("data"),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.white,
                    size: 32,
                  ),
                  trailing:  Icon(
                    Icons.list_sharp,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
