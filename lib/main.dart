import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2018/08/31/08/35/toys-3644073_960_720.png',
      postText: 'Hello',),
    Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2013/07/13/10/30/man-157378_960_720.png',
      postText: 'My Name is Phuwadon',),
       Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg',
      postText: 'i like nature',),
    Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2014/11/21/03/24/mountains-540115_960_720.jpg',
      postText: 'I like to travel',),
       Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2020/02/02/03/43/young-4811941_960_720.png',
      postText: 'I like is listening to music.',),
    Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2013/07/12/19/21/tofu-154610_960_720.png',
      postText: 'like to eat new food',),
       Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2013/07/13/14/03/film-162029_960_720.png',
      postText: 'Holiday hobbies are watching series.',),
    Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2012/04/02/12/56/exercising-24419_960_720.png',
      postText: 'I like to jog in the evening.',),
       Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2016/03/31/15/10/cartoon-1293047_960_720.png',
      postText: 'What I don t like is snakes.',),
    Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2013/07/13/13/26/briefcase-161032_960_720.png',
      postText: 'I like Black color',),
       Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2016/05/20/17/39/compass-1405617_960_720.png',
      postText: 'My home is in the north of Thailand.',),
    Tweet(
      avatar_url:
         'https://cdn.pixabay.com/photo/2018/02/12/16/41/thank-3148710_960_720.png',
      postText: 'thank you',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(
              Icons.home,
              Colors.grey,
            ),
            buildIconButton(
              Icons.safety_check_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.notifications_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.email_outlined,
              Colors.grey,
            ),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Newtweet(),) )

         /* setState(() {
            //tweetList.add(Tweet());
            tweetList.insert(
                0, 
                Tweet(
                  avatar_url:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq5eMRxkFIQMnfAe5p_L-BJUdf6xv6CvD0zw&usqp=CAU',
                  postText: 'My Tweet',
                ));
          });*/
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
        icon: Icon(
          icon,
          color: color,
        ),
        onPressed: () {});
  }
}

class Newtweet extends StatelessWidget {
  const Newtweet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      primaryColor Colors.blue,
      visualDensity: VisualDensity
      ,)
  }
}