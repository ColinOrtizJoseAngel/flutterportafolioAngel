import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _Portafolio();
}

class AppBars extends AppBar {}

class _Portafolio extends State<HomeView> {
  bool isExpanded = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    //return AppBar();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Soy Angel'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              setState(() {
                isVisible = true; // we got a new "droplet"
              });
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'Estes es un poquito del desarollo de mi juego en Unity con C#')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Diseño y Modelado 3d'),
                    ),
                    body: Center(
                        child: Column(children: <Widget>[
                      Image.network(
                        'https://scontent.fmex16-1.fna.fbcdn.net/v/t39.30808-6/342555502_885465285879228_680383318867029506_n.png?stp=dst-png_p960x960&_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFO4LZPIEqbpZnKg5Ml9XSav9LUThqTSoy_0tROGpNKjJanu6b6k-aXwPtzTihOJnepJqwD0sQpFPJJ7YgTjwng&_nc_ohc=scCaDOxCL28AX9McLIN&_nc_ht=scontent.fmex16-1.fna&oh=00_AfC4GqC0bjIuq_-kiEoDU_JX0mra7NsyEjeT2XaFzXfSEA&oe=6446BC13',
                        height: 500,
                        width: 500,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Comentario',
                          ),
                        ),
                      ),
                    ])),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
              extended: isExpanded,
              backgroundColor: Color.fromARGB(255, 255, 30, 0),
              unselectedIconTheme:
                  IconThemeData(color: Colors.white, opacity: 1),
              unselectedLabelTextStyle: TextStyle(
                color: Colors.white,
              ),
              selectedIconTheme:
                  IconThemeData(color: Colors.deepPurple.shade900),
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.square),
                  label: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fmex16-1.fna.fbcdn.net/v/t39.30808-6/342551551_169407209021811_4149882552404308702_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEM3pAaChZXiRGrX4BZEMy1573e3TR2Vo3nvd7dNHZWjQa6vXHN6taz9aDcN7vjxeUgZJarFZT08Kx-GrgKmoYi&_nc_ohc=GNhXr52ivR4AX_j9IWI&_nc_ht=scontent.fmex16-1.fna&oh=00_AfCfuiKzyjbEiZ-p-NS_pm2bSCbqgoYQYGbiCT9NXjuhqw&oe=64475841'),
                    radius: 50.0,
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text("Colin Ortiz Jose Angel"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.email),
                  label: Text("aboouttwoo@gmail.com"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.phone),
                  label: Text("4426760155"),
                ),
              ],
              selectedIndex: 0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              iconSize: 300.0,
                              icon: Image.network(
                                'https://i.pinimg.com/originals/ef/ff/65/efff65ee37b35ea3b4df426ad32b1097.png',
                              ),
                              onPressed: _launchURL,
                            ),
                            Text(
                              "Da click a la Pokedex para ver un pequeño y simple ejercisio que hice con una Api",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "React,css,boostrap herramientas de desarollo Web",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          width: 300.0,
                          child: Image.network(
                            'https://scontent.fmex16-1.fna.fbcdn.net/v/t39.30808-6/342169749_771724170989301_6606473047928986593_n.png?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGMKTOSRzU3PWBLBateYx5-Xj6LIXnxvENePoshefG8Q78XJxIB_IjVEkaNRnQadUtwMJEo4onleGQ-1aep43zW&_nc_ohc=aIzqgeAx3Y4AX8D5H2Q&_nc_ht=scontent.fmex16-1.fna&oh=00_AfCQqU7TOXkqu4-Ze_4I_111HfGY9DqETK_F8uYU_JBc4w&oe=64464730',
                            height: 250,
                            width: double.infinity,
                            //fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Visibility(
                            visible: isVisible,
                            child: IconButton(
                              iconSize: 300.0,
                              icon: Image.network(
                                'https://assets.stickpng.com/images/62e131df7fe3599fdd46ecb3.png',
                              ),
                              onPressed: _gitURL,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://pokedex-pi-beige.vercel.app/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_gitURL() async {
  const url = 'https://github.com/ColinOrtizJoseAngel/Assets';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
