import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ChatsListRecord extends FirestoreRecord {
  ChatsListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "chatName" field.
  String? _chatName;
  String get chatName => _chatName ?? '';
  bool hasChatName() => _chatName != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "usersNotified" field.
  List<DocumentReference>? _usersNotified;
  List<DocumentReference> get usersNotified => _usersNotified ?? const [];
  bool hasUsersNotified() => _usersNotified != null;

  // "lastMessageSent" field.
  String? _lastMessageSent;
  String get lastMessageSent => _lastMessageSent ?? '';
  bool hasLastMessageSent() => _lastMessageSent != null;

  // "lastMessageSentTime" field.
  DateTime? _lastMessageSentTime;
  DateTime? get lastMessageSentTime => _lastMessageSentTime;
  bool hasLastMessageSentTime() => _lastMessageSentTime != null;

  // "chat_Messages" field.
  List<DocumentReference>? _chatMessages;
  List<DocumentReference> get chatMessages => _chatMessages ?? const [];
  bool hasChatMessages() => _chatMessages != null;

  void _initializeFields() {
    _chatName = snapshotData['chatName'] as String?;
    _users = getDataList(snapshotData['users']);
    _usersNotified = getDataList(snapshotData['usersNotified']);
    _lastMessageSent = snapshotData['lastMessageSent'] as String?;
    _lastMessageSentTime = snapshotData['lastMessageSentTime'] as DateTime?;
    _chatMessages = getDataList(snapshotData['chat_Messages']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatsList');

  static Stream<ChatsListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsListRecord.fromSnapshot(s));

  static Future<ChatsListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsListRecord.fromSnapshot(s));

  static ChatsListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatsListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsListRecordData({
  String? chatName,
  String? lastMessageSent,
  DateTime? lastMessageSentTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chatName': chatName,
      'lastMessageSent': lastMessageSent,
      'lastMessageSentTime': lastMessageSentTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsListRecordDocumentEquality implements Equality<ChatsListRecord> {
  const ChatsListRecordDocumentEquality();

  @override
  bool equals(ChatsListRecord? e1, ChatsListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.chatName == e2?.chatName &&
        listEquality.equals(e1?.users, e2?.users) &&
        listEquality.equals(e1?.usersNotified, e2?.usersNotified) &&
        e1?.lastMessageSent == e2?.lastMessageSent &&
        e1?.lastMessageSentTime == e2?.lastMessageSentTime &&
        listEquality.equals(e1?.chatMessages, e2?.chatMessages);
  }

  @override
  int hash(ChatsListRecord? e) => const ListEquality().hash([
        e?.chatName,
        e?.users,
        e?.usersNotified,
        e?.lastMessageSent,
        e?.lastMessageSentTime,
        e?.chatMessages
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsListRecord;
}
