import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nfts_record.g.dart';

abstract class NftsRecord implements Built<NftsRecord, NftsRecordBuilder> {
  static Serializer<NftsRecord> get serializer => _$nftsRecordSerializer;

  BuiltList<DocumentReference>? get users;

  String? get description;

  String? get image;

  String? get name;

  int? get price;

  String? get url;

  @BuiltValueField(wireName: 'seller_name')
  String? get sellerName;

  @BuiltValueField(wireName: 'seller_ref')
  DocumentReference? get sellerRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NftsRecordBuilder builder) => builder
    ..users = ListBuilder()
    ..description = ''
    ..image = ''
    ..name = ''
    ..price = 0
    ..url = ''
    ..sellerName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nfts');

  static Stream<NftsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NftsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NftsRecord._();
  factory NftsRecord([void Function(NftsRecordBuilder) updates]) = _$NftsRecord;

  static NftsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNftsRecordData({
  String? description,
  String? image,
  String? name,
  int? price,
  String? url,
  String? sellerName,
  DocumentReference? sellerRef,
}) {
  final firestoreData = serializers.toFirestore(
    NftsRecord.serializer,
    NftsRecord(
      (n) => n
        ..users = null
        ..description = description
        ..image = image
        ..name = name
        ..price = price
        ..url = url
        ..sellerName = sellerName
        ..sellerRef = sellerRef,
    ),
  );

  return firestoreData;
}
