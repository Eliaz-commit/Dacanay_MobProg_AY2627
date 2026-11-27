## Lab Activity 2: Discussion

For the posts, I did not copy and paste the NewsFeedCard ten times. I made a list of post data where each post has a name, the text, the number of likes, the date, and whether it has a photo or not. The newsfeed uses ListView.builder to turn each item in the list into a card, so adding a new post only means adding one more item to the list.

For the notifications, I used ListView.separated to show 20 notifications with a divider between them. All of them use the same "Test" profile, and only the post number and description change. ListView only builds the items that are on the screen, so the list scrolls smoothly even with many items.

For enhancement 1, every post now has its own number of likes and its own date. Six posts have a photo and four have no picture. If a photo cannot load, a placeholder box shows in its place so the post does not look broken.

For enhancement 2, the AppBar title changes depending on the tab. It shows the app name on the Home tab and "Notifications" on the Notifications tab.

For enhancement 3, I added a Profile item to the bottom navigation bar, so it now has Home, Notifications, and Profile. The Profile button is only an icon for now and does not open a page yet.

For enhancement 4, I changed the app name to Elibook. It shows in the AppBar and as the app name on the phone.

For enhancement 5, I changed the color palette in constants.dart to forest green. The buttons, avatars, placeholder box, and the app theme now use these colors.

One challenge was that the notification code from the activity imported a file called custom_font.dart, but my project uses custom_text.dart, so I fixed the import. Another problem was that the sample put the notifications inside a Column, which overflows when there are 20 items, so I changed it to a ListView so it can scroll and the rest is ai assisted like for example, what is the best thing to do here and there and so on.
