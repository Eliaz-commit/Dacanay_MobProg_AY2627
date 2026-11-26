import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

/// The data for one post. The card is built from this, so adding a post
/// only means adding one more entry to the list below.
class PostData {
  const PostData({
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    this.hasPhoto = false,
  });

  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasPhoto;
}

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  static const List<PostData> posts = [
    PostData(
      userName: 'Rosalyn Rhiana',
      postContent: 'How are yaaaaaaaaaaa',
      numOfLikes: 100,
      date: 'October 11',
    ),
    PostData(
      userName: 'Alonzo Torres',
      postContent: 'Haaaaai',
      numOfLikes: 200,
      date: 'October 15',
      hasPhoto: true,
    ),
    PostData(
      userName: 'Bea Mendoza',
      postContent: 'First week of the semester done!',
      numOfLikes: 58,
      date: 'October 20',
      hasPhoto: true,
    ),
    PostData(
      userName: 'Carlo Villanueva',
      postContent: 'Anyone up for basketball later?',
      numOfLikes: 12,
      date: 'October 24',
    ),
    PostData(
      userName: 'Denise Ramos',
      postContent: 'Sunset at the bay today',
      numOfLikes: 341,
      date: 'October 29',
      hasPhoto: true,
    ),
    PostData(
      userName: 'Enzo Garcia',
      postContent: 'Finally finished my Flutter lab activity.',
      numOfLikes: 77,
      date: 'November 3',
      hasPhoto: true,
    ),
    PostData(
      userName: 'Faith Navarro',
      postContent: 'Coffee first, then thesis.',
      numOfLikes: 25,
      date: 'November 8',
    ),
    PostData(
      userName: 'Gabriel Santos',
      postContent: 'Road trip with the barkada',
      numOfLikes: 156,
      date: 'November 14',
      hasPhoto: true,
    ),
    PostData(
      userName: 'Hannah Cruz',
      postContent: 'Who else is excited for Christmas break?',
      numOfLikes: 89,
      date: 'November 20',
      hasPhoto: true,
    ),
    PostData(
      userName: 'Ivan Reyes',
      postContent: 'Good morning, Elibook!',
      numOfLikes: 7,
      date: 'November 26',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // ListView.builder creates each card only when it scrolls into view.
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return NewsFeedCard(
          userName: post.userName,
          postContent: post.postContent,
          numOfLikes: post.numOfLikes,
          date: post.date,
          avatarUrl: 'https://i.pravatar.cc/150?img=${index + 1}',
          imageUrl: post.hasPhoto
              ? 'https://picsum.photos/seed/elibook$index/800/450'
              : null,
        );
      },
    );
  }
}
