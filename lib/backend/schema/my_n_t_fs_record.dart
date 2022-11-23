import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_n_t_fs_record.g.dart';

abstract class MyNTFsRecord
    implements Built<MyNTFsRecord, MyNTFsRecordBuilder> {
  static Serializer<MyNTFsRecord> get serializer => _$myNTFsRecordSerializer;

  String? get name;

  BuiltList<DocumentReference>? get users;

  String? get description;

  String? get image;

  int? get price;

  String? get url;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MyNTFsRecordBuilder builder) => builder
    ..name = ''
    ..users = ListBuilder()
    ..description = ''
    ..image = ''
    ..price = 0
    ..url = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('myNTFs')
          : FirebaseFirestore.instance.collectionGroup('myNTFs');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('myNTFs').doc();

  static Stream<MyNTFsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyNTFsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyNTFsRecord._();
  factory MyNTFsRecord([void Function(MyNTFsRecordBuilder) updates]) =
      _$MyNTFsRecord;

  static MyNTFsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyNTFsRecordData({
  String? name,
  String? description,
  String? image,
  int? price,
  String? url,
}) {
  final firestoreData = serializers.toFirestore(
    MyNTFsRecord.serializer,
    MyNTFsRecord(
      (m) => m
        ..name = name
        ..users = null
        ..description = description
        ..image = image
        ..price = price
        ..url = url,
    ),
  );

  return firestoreData;
}
