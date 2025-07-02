/* 
99% of the following code doesn't make sense and will not be implemented like this in any ways. 
After learning about databases in dart all of this will be revisited and updated to make sense and use correct syntax


Aufgabe 1:
Tabelle der Daten und Datentypen meiner App-Idee
Daten                               |           Datentyp
------------------------------------|------------------------------------------
Liste aller beliebten Beiträge      | List<PopularThread>
Liste aller Games                   | List<String Game>
Liste aller Kommentare              | List<Comment>
Liste aller Chats                   | List<Chat>
Liste aller Nachrichten eines Chats | List<Message>
Liste aller Benachrichtigungen      | List<Notification>
Liste der Suchergebnisse            | List<SearchResult>
Nachricht                           | String message, String userId, String time
Kommentar                           | String comment, String userId, String time
Benachrichtigung                    | String notification, String userId || String threadId, String time
Profil                              | File ProfilePicture, String Username, String Status, String Bio, List<Interest>, List<OwnThread>, String userId
Chat                                | String userId, String lastMessage, String time
Thread                              | String title, String threadDesc, String gameId, String userId
*/

/* Aufgabe 2 */
class User {}

class Comment {}

class Message {}

class Thread {}

class Chat {}

class Notification {}

abstract class DatabaseRepository {
  List<Thread> PopularThreads() {
    return [];
  }

  List<Chat> allChats() {
    return [];
  }

  List<Notification> getNotifications() {
    return [];
  }

  /* Messages */
  List<Message> getMessages() {
    return [];
  }

  void sendMessage(Message message);

  /* User */
  void newUser(User user);

  void getUser(User user);

  void updateUser(User user);

  void deleteUser(User user);

  /* Threads */
  void createThread(Thread thread);

  void getThread(Thread thread);

  void updateThread(Thread thread);

  void deleteThread(Thread thread);

  /* Comments */
  void sendComment(Comment comment);

  void updateComment(Comment comment);

  void deleteComment(Comment comment);
}

/* Aufgabe 3 */
class MockDatabaseRepository implements DatabaseRepository {
  @override
  List<Thread> PopularThreads() {
    List<Thread> popular = [];
    print("The following threads are popular at the moment.");
    return popular;
  }

  @override
  List<Chat> allChats() {
    List<Chat> chats = [];
    print("All the chats lmao");
    return chats;
  }

  @override
  List<Notification> getNotifications() {
    List<Notification> notifications = [];
    print("All notifications for account xyz");
    return notifications;
  }

  /* Messages */
  @override
  List<Message> getMessages() {
    List<Message> messages = [];
    print("all messages of chat xyz");
    return messages;
  }

  List<Message> msgs = [];
  @override
  void sendMessage(Message msg) {
    msgs.add(msg);
  }

  /* User */
  Map<String, dynamic> userData = {};
  @override
  void newUser(User user) {
    userData = {
      'id': user.id,
      'username': user.username,
      'age': user.age,
      'bio': user.bio,
      'status': user.status,
      'favGames': user.favGames,
      'userThreads': user.threads,
    };
    return userData;
  }

  @override
  void getUser(User user) {
    print("This is user $user");
    return user;
  }

  @override
  void updateUser(User updatedUser) {
    userData = {
      'username': updatedUser.username,
      'age': updatedUser.age,
      'bio': updatedUser.bio,
      'status': updatedUser.status,
      'favGames': updatedUser.favGames,
      'userThreads': updatedUser.threads,
    };
    return userData;
  }

  @override
  void deleteUser(User user) {
    userData.clear();
  }

  /* Threads */
  Map<String, dynamic> threadData = {};
  @override
  void createThread(Thread newThread){
    threadData = {
      'author': userData.id,
      'desc': newThread.desc,
      'likes': newThread.likes,
      'comments': List<Comment> threadComments = [],
    };
    return threadData;
  }

  @override
  void getThread(Thread thread){
    print("This is thread $thread");
    return thread;
  }

  @override
  void updateThread(Thread updatedThread){
    threadData = {
      'desc': updatedThread.desc,
    };
    return threadData;
  }

  @override
  void deleteThread(Thread thread){
    threadData.clear();
  }

  /* Comments */
  List<Comment> commentsOfThread = [];

  @override
  void sendComment(Comment comment){
    commentsOfThread.add(comment);
    threadData ={
      'comments': threadComments.add(commentsOfThread)
    };
  }

  @override
  void updateComment(Comment comment){
    commentsOfThread.add(comment);
    threadData ={
      'comments': threadComments.add(commentsOfThread)
    };
  }

  @override
  void deleteComment(Comment comment){
    commentsOfThread.remove(comment);
    threadData ={
      'comments': threadComments.add(commentsOfThread)
    };
  }
}
