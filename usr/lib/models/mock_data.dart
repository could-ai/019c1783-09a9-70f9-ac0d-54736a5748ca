class User {
  final String id;
  final String name;
  final String avatarUrl;
  final bool isOnline;

  User({required this.id, required this.name, required this.avatarUrl, this.isOnline = false});
}

class Message {
  final String id;
  final User sender;
  final String text;
  final DateTime timestamp;

  Message({required this.id, required this.sender, required this.text, required this.timestamp});
}

class ChatRoom {
  final String id;
  final User otherUser;
  final Message lastMessage;
  final int unreadCount;

  ChatRoom({required this.id, required this.otherUser, required this.lastMessage, this.unreadCount = 0});
}

class ClubEvent {
  final String id;
  final String title;
  final String imageUrl;
  final String location;
  final DateTime date;
  final int attendees;

  ClubEvent({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.location,
    required this.date,
    required this.attendees,
  });
}

// Mock Data
final User currentUser = User(id: 'u1', name: 'ClubberOne', avatarUrl: 'https://i.pravatar.cc/150?u=u1', isOnline: true);
final User user2 = User(id: 'u2', name: 'DJ Snake', avatarUrl: 'https://i.pravatar.cc/150?u=u2', isOnline: true);
final User user3 = User(id: 'u3', name: 'TechnoQueen', avatarUrl: 'https://i.pravatar.cc/150?u=u3', isOnline: false);
final User user4 = User(id: 'u4', name: 'RaveMaster', avatarUrl: 'https://i.pravatar.cc/150?u=u4', isOnline: true);

final List<ChatRoom> mockChats = [
  ChatRoom(
    id: 'c1',
    otherUser: user2,
    lastMessage: Message(id: 'm1', sender: user2, text: 'See you at the booth!', timestamp: DateTime.now().subtract(const Duration(minutes: 5))),
    unreadCount: 2,
  ),
  ChatRoom(
    id: 'c2',
    otherUser: user3,
    lastMessage: Message(id: 'm2', sender: currentUser, text: 'What time does the set start?', timestamp: DateTime.now().subtract(const Duration(hours: 1))),
    unreadCount: 0,
  ),
  ChatRoom(
    id: 'c3',
    otherUser: user4,
    lastMessage: Message(id: 'm3', sender: user4, text: 'Got the VIP passes.', timestamp: DateTime.now().subtract(const Duration(days: 1))),
    unreadCount: 0,
  ),
];

final List<ClubEvent> mockEvents = [
  ClubEvent(
    id: 'e1',
    title: 'Neon Nights',
    imageUrl: 'https://images.unsplash.com/photo-1566737236500-c8ac43014a67?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
    location: 'Club Zenith',
    date: DateTime.now().add(const Duration(days: 2)),
    attendees: 1240,
  ),
  ClubEvent(
    id: 'e2',
    title: 'Underground Bass',
    imageUrl: 'https://images.unsplash.com/photo-1574391884720-2e455201d6fc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
    location: 'The Basement',
    date: DateTime.now().add(const Duration(days: 5)),
    attendees: 450,
  ),
  ClubEvent(
    id: 'e3',
    title: 'Rooftop Vibes',
    imageUrl: 'https://images.unsplash.com/photo-1533174072545-e8d4aa97edf9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
    location: 'Sky Lounge',
    date: DateTime.now().add(const Duration(days: 1)),
    attendees: 890,
  ),
];
