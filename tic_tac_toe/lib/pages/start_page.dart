import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B2999),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 320,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.black12,
                            spreadRadius: 5),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: TextField(
                    autofocus: false,
                    onSubmitted: (nombre) {},
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Ingrese su nombre",
                        hintStyle: TextStyle(
                            color: Color(0xff3B2999),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MenuElement(text: "Crear Partida", color: Color(0xffF58C50)),
            SizedBox(
              height: 15,
            ),
            MenuElement(text: "Unirse a Partida", color: Color(0xff1FAED6)),
          ],
        ),
      ),
    );
  }
}

class MenuElement extends StatelessWidget {
  String text = "";
  Color color = Colors.pink;
  MenuElement({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 80,
        width: double.infinity,
        child: Center(
            child: Text(
          this.text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23,
              letterSpacing: 1),
        )),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 2, color: Colors.black12, spreadRadius: 5),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            //end: Alignment.bottomCenter,
            colors: [Color(0xffD82A8B), this.color],
          ),

          //color: this.color,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    );
  }
}
