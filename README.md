# Dacanay_MobProg_AY2627

**Elijah Ashby Dacanay**  
2024-1001244  
INF241

## Lab Activity 0: Discussion

In this activity, I learned how to set up and configure the development environment for mobile application development using Flutter. I also became familiar with the project structure, important files, and folders used in Flutter.

This activity helped me understand the basic tools and configurations needed for future mobile programming activities.

## Lab Activity 1: Discussion

For enhancement 1, I added a picture to the newsfeed. Some posts have a picture and some posts do not. This makes the posts look more like a real social media feed. If the picture is still loading or cannot be shown, the app will show something in its place instead of leaving it broken.

For enhancement 2, I changed the profile icon into a round avatar. It makes the user easier to recognize when looking at the posts. If the profile photo does not load, the first letter of the user’s name will show, so the avatar is not empty.

For enhancement 3, I improved the Like, Comment, and Share buttons. They are arranged evenly, and the number of likes can be seen beside the Like button. This makes the newsfeed easier to look at, especially on a small screen. The buttons are still for display and testing for now, so the full actions can be added later.

In this activity, I learned that small changes like pictures, avatars, and buttons can make the app look more complete. I also learned to check how the newsfeed looks when a post has no picture or when an online photo does not load.

## Lab Activity 2: Discussion

For the posts, I did not copy and paste the NewsFeedCard ten times. I made a list of post data where each post has a name, the text, the number of likes, the date, and whether it has a photo or not. The newsfeed uses ListView.builder to turn each item in the list into a card, so adding a new post only means adding one more item to the list.

For the notifications, I used ListView.separated to show 20 notifications with a divider between them. All of them use the same "Test" profile, and only the post number and description change. ListView only builds the items that are on the screen, so the list scrolls smoothly even with many items.

For enhancement 1, every post now has its own number of likes and its own date. Six posts have a photo and four have no picture. If a photo cannot load, a placeholder box shows in its place so the post does not look broken.

For enhancement 2, the AppBar title changes depending on the tab. It shows the app name on the Home tab and "Notifications" on the Notifications tab.

For enhancement 3, I added a Profile item to the bottom navigation bar, so it now has Home, Notifications, and Profile. The Profile button is only an icon for now and does not open a page yet.

For enhancement 4, I changed the app name to Elibook. It shows in the AppBar and as the app name on the phone.

For enhancement 5, I changed the color palette in constants.dart to forest green. The buttons, avatars, placeholder box, and the app theme now use these colors.

One challenge was that the notification code from the activity imported a file called custom_font.dart, but my project uses custom_text.dart, so I fixed the import. Another problem was that the sample put the notifications inside a Column, which overflows when there are 20 items, so I changed it to a ListView so it can scroll. I also had to add the notifications page to the PageView, because before this the Notifications tab was highlighted but still showed the newsfeed.
