import 'package:flutter/material.dart';

void main() => runApp(AppEntrenamientoCanino());

class AppEntrenamientoCanino extends StatelessWidget {
  const AppEntrenamientoCanino({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entrenamiento Canino",
      home: Entrenador()
    );
  }
} //fin clase AppEntrenamientoCanino

class Entrenador extends StatelessWidget {
  const Entrenador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Entrenadora Maria Hernandez"),
        backgroundColor: Colors.purpleAccent,
        actions: [
          Icon(Icons.bedroom_child),
          Icon(Icons.flight),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF800000), // Guinda
                    Color(0xFF300000), // Guinda Oscuro
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/mariarene0602/IAMoviles_Act5_appBarCard_Gpo_6I/refs/heads/main/Maria%20Hernandez.png',
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'María Hernández',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Entrenador Canino',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} // fin clase Entrenador