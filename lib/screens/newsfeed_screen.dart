import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Elijah Ashby Dacanay',
          postContent: 'Kamusta',
          numOfLikes: 100,
          date: 'October 11',
          avatarUrl: 'https://i.pravatar.cc/150?u=elijah-dacanay',
        ),
        NewsFeedCard(
          userName: 'Roben Juanatas',
          postContent: 'Kicking off the holiday season with ICpEP-NCR!',
          numOfLikes: 200,
          date: 'December 2',
          avatarUrl: 'https://i.pravatar.cc/150?u=roben-juanatas',
          imageUrl: 'https://images.unsplash.com/photo-1481214110143-ed630356e1bb?auto=format&fit=crop&w=900&q=80',
        ),
      ],
    );
  }
}
