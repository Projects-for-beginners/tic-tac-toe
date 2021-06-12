import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B2999),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [Versus()],
        ),
      ),
    );
  }
}

class Versus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      color: Colors.white,
      width: double.infinity,
      height: 200,
      child: Row(
        children: [
          PlayerItem(name: "Batman", avatar: "assets/1.jpg"),
        ],
      ),
    );
  }
}

class PlayerItem extends StatelessWidget {
  final String name;
  final String avatar;

  const PlayerItem({this.name, this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(this.name),
          Image(image: AssetImage("assets/images/1.png"))
        ],
      ),
    );
  }
}
