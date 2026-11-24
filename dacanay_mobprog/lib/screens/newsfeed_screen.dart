
import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Rosalyn Rhiana',
          postContent: 'How are yaaaaaaaaaaa',
          numOfLikes: 100,
          date: 'October 11',
          avatarUrl: 'https://i.pravatar.cc/150?u=elijah-dacanay',
        ),
        NewsFeedCard(
          userName: 'Alonzo Torres',
          postContent: 'Haaaaai',
          numOfLikes: 200,
          date: 'December 2',
          avatarUrl: 'https://i.pravatar.cc/150?u=roben-juanatas',
          imageUrl: 'https://picsum.photos/800/450',
        ),
      ],
    );
  }
}
