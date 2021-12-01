import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Met Tech test app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showOrganizer = false;
  bool showSponsors = false;
  bool showPerformers = false;
  bool showSeatingPlan = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.9),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "National Day Festival",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            SizedBox(
              width: 20.0,
            ),
            Icon(
              Icons.share,
              color: Colors.black,
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Overview"),
              Tab(text: "Additional info"),
              Tab(text: "Contact"),
              Tab(text: "Comment"),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //1
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 10.0,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("27 Mar 2019 - 29 Mar 2019"),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              //2
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 25.0,
                          horizontal: 15.0,
                        ),
                        child: Text(
                          "Event Location",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 10.0,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("27 Mar 2019 - 29 Mar 2019"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 10.0,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("27 Mar 2019 - 29 Mar 2019"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 10.0,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("27 Mar 2019 - 29 Mar 2019"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //3
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Brief Description",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //event organizer
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      bottom: 12.0,
                      left: 20.0,
                      right: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "View event organizer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  showOrganizer = !showOrganizer;
                                });
                              },
                              icon: showOrganizer
                                  ? const Icon(Icons.minimize)
                                  : const Icon(Icons.add),
                            ),
                          ],
                        ),
                        showOrganizer
                            ? SizedBox(
                                height: 150.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(10, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                radius: 40,
                                                backgroundImage: NetworkImage(
                                                    "https://img.freepik.com/free-photo/mand-holding-cup_1258-340.jpg?size=626&ext=jpg"),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Person name"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ),
              //event sponsors
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      bottom: 12.0,
                      left: 20.0,
                      right: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "View event sponsors",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  showSponsors = !showSponsors;
                                });
                              },
                              icon: showSponsors
                                  ? const Icon(Icons.minimize)
                                  : const Icon(Icons.add),
                            ),
                          ],
                        ),
                        showSponsors
                            ? SizedBox(
                                height: 150.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(10, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                radius: 40,
                                                backgroundImage: NetworkImage(
                                                    "https://img.freepik.com/free-photo/mand-holding-cup_1258-340.jpg?size=626&ext=jpg"),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Person name"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ),
              //event performers
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      bottom: 12.0,
                      left: 20.0,
                      right: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "View event performers",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  showPerformers = !showPerformers;
                                });
                              },
                              icon: showPerformers
                                  ? const Icon(Icons.minimize)
                                  : const Icon(Icons.add),
                            ),
                          ],
                        ),
                        showPerformers
                            ? SizedBox(
                                height: 150.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(10, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                radius: 40,
                                                backgroundImage: NetworkImage(
                                                    "https://img.freepik.com/free-photo/mand-holding-cup_1258-340.jpg?size=626&ext=jpg"),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Person name"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ),
              //seating plan
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      bottom: 12.0,
                      left: 20.0,
                      right: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "View seating plan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  showSeatingPlan = !showSeatingPlan;
                                });
                              },
                              icon: showSeatingPlan
                                  ? const Icon(Icons.minimize)
                                  : const Icon(Icons.add),
                            ),
                          ],
                        ),
                        showSeatingPlan
                            ? SizedBox(
                                height: 150.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(10, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                radius: 40,
                                                backgroundImage: NetworkImage(
                                                    "https://img.freepik.com/free-photo/mand-holding-cup_1258-340.jpg?size=626&ext=jpg"),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Person name"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ),
              //Buttons
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        color: const Color.fromRGBO(134, 58, 235, 1),
                        onPressed: () {},
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 15.0,
                            ),
                            child: Text(
                              "Add Tickets",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        color: const Color.fromRGBO(85, 186, 239, 1),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 15.0,
                          ),
                          child: Text(
                            "Promote Event",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
