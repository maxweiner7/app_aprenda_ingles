import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {

  AudioCache _audioCache = AudioCache();

  _executar (String nomeAudio) {

    _audioCache.play("audios/$nomeAudio.mp3");
  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll([
      "audios/cao.mp3", "audios/gato.mp3", "audios/leao.mp3", "audios/macaco.mp3", "audios/ovelha.mp3", "audios/vaca.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    
   // double largura = MediaQuery.of(context).size.width;
    //double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _executar("cao");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("macaco");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("ovelha");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vaca");
          },
          child: Image.asset("assets/images/vaca.png"),
        ),

      ],
    );
  }
}
