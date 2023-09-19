import 'package:flutter/material.dart';
//import 'package:lottery_app/screen_redirect.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            //centerTitle: false,
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.group),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.camera_alt),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,)=>[
                    const PopupMenuItem(
                      value: 1,
                      child: Text('New Group'),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text('New Broadcast'),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text('Linked Devices'),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text('Starred Messages'),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text('Settings'),
                    ),

                  ]),

              const SizedBox(
                width: 20,
              ),
            ],
          ),
          body: TabBarView(
            children: [

              const Text('Community'),
             // const Text('Chats'),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading:const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      ),
                      title: const Text('Aroosa(You)'),
                      subtitle:const Text('Where is my dog'),
                      trailing:const Text('10:59am'),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                      },
                  );
              }),

              //const Text('Status'),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                    if(index == 0){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('New Updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 4,
                                    )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                              ),
                              title: const Text('Ahmad'),
                              subtitle:const Text('Hey, I am using WhatsApp'),
                              trailing:const Text('10:59am'),
                            ),
                          ],
                        ),
                      );
                    }
                    else{
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('New Updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 4,
                                    )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                ),
                              ),
                              title: const Text('Ahmad'),
                              subtitle:const Text('Hey, I am using WhatsApp'),
                              trailing:const Text('10:59am'),
                            ),
                          ],
                        ),
                      );
                    }

                  }),

              //const Text('Calls'),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading:const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      ),
                      title: const Text('Aroosa(You)'),
                      subtitle:  Text( index /2 == 0? 'You have missed an audio call': 'Call time is 12:30pm'),
                      trailing:Icon(
                        index/2 == 0 ? Icons.phone : Icons.video_call_outlined
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                      },
                    );
                  }),
            ],
        ),
        )
    );

  }
}


/*Navigation drawer*/
//drawer: Drawer(
//           child: Padding(
//             padding: EdgeInsets.zero,
//             child: ListView(
//               children: [
//                 //DrawerHeader(child: Text('App Credentials')),
//                 const UserAccountsDrawerHeader(
//                     decoration: BoxDecoration(
//                       color: Colors.brown,
//                     ),
//                     currentAccountPicture: CircleAvatar(
//                       backgroundImage: NetworkImage('https://images.pexels.com/photos/17815953/pexels-photo-17815953/free-photo-of-sun-hat-a-camera-a-book-and-a-bowl-of-blackberries-lying-on-a-white-picnic-blanket.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load'),
//                     ),
//                     accountName: Text('Aroosa Fazal'),
//                     accountEmail: Text('aroosa199@gmail.com')
//                 ),
//                 ListTile(
//                   leading:const Icon(Icons.home),
//                   title: const Text('Home'),
//                   onTap: (){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const HomeScreen()),
//                     );
//                   },
//                 ),
//                 ListTile(
//                   leading:const Icon(Icons.settings),
//                   title: const Text('Settings'),
//                   onTap: (){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const ScreenTwo()),
//                     );
//                   },
//                 ),
//                 ListTile(
//                   leading:const Icon(Icons.login_sharp),
//                   title: const Text('Login'),
//                   onTap: (){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const ScreenTwo()),
//                     );
//                   },
//                 ),
//                 ListTile(
//                   leading:const Icon(Icons.logout_sharp),
//                   title: const Text('Log out'),
//                   onTap: (){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const HomeScreen()),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),


// body: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Center(
//       child: TextButton(
//         onPressed: () {
//           //Navigator.pushNamed(context, ScreenTwo.id);
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => ScreenTwo()));
//         },
//         child: const Text('Screen 1'),
//       ),
//     )
//   ],
// ),