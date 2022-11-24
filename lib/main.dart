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
         'https://s.isanook.com/hi/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hpLzAvdWQvMjk1LzE0Nzk4NTcvMTQ3OTg1Ny0yMDE5MDcwOTAxMDEwMS0yYjU1OTA0LmpwZw==.jpg',
      postText: 'Hello',),
    Tweet(
      avatar_url:
         'https://s.isanook.com/hi/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hpLzAvdWQvMjk1LzE0Nzk4NTcvMTQ3OTg1Ny0yMDE5MDcwOTAxMDA1OS02MmJkNWNkLmpwZw==.jpg',
      postText: 'My name is Tundorn',),
    Tweet(
      avatar_url: 
      'https://s.isanook.com/hi/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hpLzAvdWQvMjk1LzE0Nzk4NTcvMTQ3OTg1Ny0yMDE5MDcwOTAxMDEwNi03MGM4OGZiLmpwZw==.jpg',
      postText: 'I am 22 years old',),
    Tweet(
      avatar_url: 
        'https://storage.googleapis.com/fastwork-static/85b6170c-2b0d-4d61-8e09-6321c1fed779.jpg',
      postText: 'I study at Bangkok university',),
    Tweet(
      avatar_url: 
        'https://s.isanook.com/hi/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hpLzAvdWQvMjk1LzE0Nzk4NTcvMTQ3OTg1Ny0yMDE5MDcwOTAxMDEwOS05OTE2ZmQ3LmpwZw==.jpg', 
      postText: 'I study at Faculty of Computer Engineering'),
    Tweet(
      avatar_url: 
        'https://s.isanook.com/hi/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hpLzAvdWQvMjk1LzE0Nzk4NTcvMTQ3OTg1Ny0yMDE5MDcwOTAxMDEwMS0yYjU1OTA0LmpwZw==.jpg', 
      postText: 'I love learning about Iot systems'),
    Tweet(
      avatar_url: 
        'https://obs.line-scdn.net/0hs7RN0odzLBhvNzo69dlTT1VhL3dcWz8bCwF9GzNZci9DAm9GVQJrLkw0cX1KAWtGAQNgeUI1NykXDmsdBwFr/w1200', 
      postText: 'My favorite food'),
    Tweet(
      avatar_url: 
        'https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/LakeWakatipuNewZealand.jpg?crop=0%2C25%2C4000%2C2200&wid=4000&hei=2200&scl=1.0', 
      postText: 'My favorite country is New Zealand'),
    Tweet(
      avatar_url: 
        'https://s.isanook.com/hi/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2hpLzAvdWQvMjk1LzE0Nzk4NTcvMTQ3OTg1Ny0yMDE5MDcwOTAxMDEwNy0yMjNmYTUxLmpwZw==.jpg', 
      postText: 'I like the sea more than the mountains'),
    Tweet(
      avatar_url: 
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunset-quotes-21-1586531574.jpg', 
      postText: '')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://storage.googleapis.com/fastwork-static/85b6170c-2b0d-4d61-8e09-6321c1fed779.jpg'),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: const Text(
          "Twitter",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
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
              Colors.black,
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
          setState(() {
            //tweetList.add(Tweet());
            tweetList.insert(
                0, 
                Tweet(
                  avatar_url:
                    'https://ctl.s6img.com/society6/img/HjYyCr1E-ZXcLf7l748aQKcBzMc/w_1500/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/8a0d61f9b1ef4c7ebf3d976543255cc9/~~/have-a-good-day-bra-prints.jpg',
                  postText: 'Have a good day.',
                ));
            tweetList.insert(
                0, 
                Tweet(
                  avatar_url:
                    'https://media.evo.co.uk/image/upload/v1581606140/evo/2020/02/Ford%20Mustang%20Mach%201-5.jpg',
                  postText: '',
                ));
          });
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
