import 'package:flutter/material.dart';
import 'package:video_call/screen/cam_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        children: [
          /// logo
          Expanded(
            child: _Logo(),
          ),

          /// image
          Expanded(
            child: _Image(),
          ),

          /// button
          Expanded(
            child: _Footer(),
          ),
        ],
      ),
    );
  }
}

class _Logo extends StatefulWidget {
  const _Logo({super.key});

  @override
  State<_Logo> createState() => _LogoState();
}

class _LogoState extends State<_Logo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.blue[300]!,
              blurRadius: 12,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.videocam,
                color: Colors.white,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'LIVE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Image extends StatefulWidget {
  const _Image({super.key});

  @override
  State<_Image> createState() => _ImageState();
}

class _ImageState extends State<_Image> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'asset/img/home_img.png',
      ),
    );
  }
}

class _Footer extends StatefulWidget {
  const _Footer({super.key});

  @override
  State<_Footer> createState() => _FooterState();
}

class _FooterState extends State<_Footer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return CamScreen();
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: Text('입장하기'),
      ),
    );
  }
}
