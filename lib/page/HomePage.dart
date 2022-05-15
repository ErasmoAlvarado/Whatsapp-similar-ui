import 'package:flutter/material.dart';
import 'package:ramdonuser/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Whatsapp",
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            )
          ]),
        ),
        body: FutureBuilder(
          future: ConnectionDio().Getdata(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }
            return ListView.builder(
              itemCount: ConnectionDio().extend,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index].username),
                  subtitle: Text(snapshot.data[index].firstname),
                  leading: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 150,
                                  ),
                                  Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Container(
                                        height: 250,
                                        width: 250,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    snapshot.data[index].large),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        width: 250,
                                        height: 30,
                                        color: Colors.black.withOpacity(0.5),
                                        padding: const EdgeInsets.all(6),
                                        child:
                                            Text(snapshot.data[index].username),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      height: 50,
                                      width: 250,
                                      color: Colors.blueGrey[800],
                                      child: Row(
                                        children: const [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Icon(Icons.chat),
                                          SizedBox(
                                            width: 42,
                                          ),
                                          Icon(Icons.call),
                                          SizedBox(
                                            width: 42,
                                          ),
                                          Icon(Icons.video_call),
                                          SizedBox(
                                            width: 42,
                                          ),
                                          Icon(Icons.more),
                                          SizedBox(
                                            width: 12,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            );
                          });
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(snapshot.data[index].large),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
