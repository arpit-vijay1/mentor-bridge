import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ListMessagesChatRecord extends FirestoreRecord {
  ListMessagesChatRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "chatList" field.
  DocumentReference? _chatList;
  DocumentReference? get chatList => _chatList;
  bool hasChatList() => _chatList != null;

  // "timeCreated" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _users = getDataList(snapshotData['users']);
    _chatList = snapshotData['chatList'] as DocumentReference?;
    _timeCreated = snapshotData['timeCreated'] as DateTime?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _images = getDataList(snapshotData['images']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list_messagesChat');

  static Stream<ListMessagesChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListMessagesChatRecord.fromSnapshot(s));

  static Future<ListMessagesChatRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ListMessagesChatRecord.fromSnapshot(s));

  static ListMessagesChatRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListMessagesChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListMessagesChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListMessagesChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListMessagesChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListMessagesChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListMessagesChatRecordData({
  String? description,
  DocumentReference? chatList,
  DateTime? timeCreated,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'chatList': chatList,
      'timeCreated': timeCreated,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListMessagesChatRecordDocumentEquality
    implements Equality<ListMessagesChatRecord> {
  const ListMessagesChatRecordDocumentEquality();

  @override
  bool equals(ListMessagesChatRecord? e1, ListMessagesChatRecord? e2) {
    const listEquality = ListEquality();
    return e1?.description == e2?.description &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.chatList == e2?.chatList &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.owner == e2?.owner &&
        listEquality.equals(e1?.images, e2?.images);
  }

  @override
  int hash(ListMessagesChatRecord? e) => const ListEquality().hash([
        e?.description,
        e?.users,
        e?.chatList,
        e?.timeCreated,
        e?.owner,
        e?.images
      ]);

  @override
  bool isValidKey(Object? o) => o is ListMessagesChatRecord;
}
