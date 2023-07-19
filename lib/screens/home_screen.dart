import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🇧🇯BeninApp "),
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined, size: 25))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              padding: EdgeInsets.only(left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor),
                            shape: BoxShape.circle),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/onboarding/4.jpg"),
                                filterQuality: FilterQuality.low,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("@cress")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 500,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(20.0)
                  ),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/onboarding/4.jpg"),
                    ),
                    title: Text("Jana Absould"),
                    subtitle: Text("Artist"),
                    trailing: Icon(Icons.more_horiz_outlined),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black26),
                        image: DecorationImage(
                          image: AssetImage("assets/images/onboarding/3.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.copy)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 500,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration:
              BoxDecoration(border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/images/onboarding/1.jpg"),
                    ),
                    title: Text("Jana Absould"),
                    subtitle: Text("Artist"),
                    trailing: IconButton(onPressed: () {  },
                        icon: Icon(Icons.more_horiz_outlined)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black26),
                          image: DecorationImage(
                              image: AssetImage("assets/images/onboarding/2.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.copy)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.message_outlined), label: "Message"),
          NavigationDestination(icon: Icon(Icons.search), label: "Recherche"),
          NavigationDestination(
              icon: Icon(Icons.person_2_outlined), label: "Profil"),
        ],
      ),
    );
  }
}
