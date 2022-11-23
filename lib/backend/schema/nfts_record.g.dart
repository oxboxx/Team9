// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NftsRecord> _$nftsRecordSerializer = new _$NftsRecordSerializer();

class _$NftsRecordSerializer implements StructuredSerializer<NftsRecord> {
  @override
  final Iterable<Type> types = const [NftsRecord, _$NftsRecord];
  @override
  final String wireName = 'NftsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NftsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sellerName;
    if (value != null) {
      result
        ..add('seller_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sellerRef;
    if (value != null) {
      result
        ..add('seller_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  NftsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NftsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seller_name':
          result.sellerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seller_ref':
          result.sellerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$NftsRecord extends NftsRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? users;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final String? url;
  @override
  final String? sellerName;
  @override
  final DocumentReference<Object?>? sellerRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NftsRecord([void Function(NftsRecordBuilder)? updates]) =>
      (new NftsRecordBuilder()..update(updates))._build();

  _$NftsRecord._(
      {this.users,
      this.description,
      this.image,
      this.name,
      this.price,
      this.url,
      this.sellerName,
      this.sellerRef,
      this.ffRef})
      : super._();

  @override
  NftsRecord rebuild(void Function(NftsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftsRecordBuilder toBuilder() => new NftsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftsRecord &&
        users == other.users &&
        description == other.description &&
        image == other.image &&
        name == other.name &&
        price == other.price &&
        url == other.url &&
        sellerName == other.sellerName &&
        sellerRef == other.sellerRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, users.hashCode),
                                    description.hashCode),
                                image.hashCode),
                            name.hashCode),
                        price.hashCode),
                    url.hashCode),
                sellerName.hashCode),
            sellerRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftsRecord')
          ..add('users', users)
          ..add('description', description)
          ..add('image', image)
          ..add('name', name)
          ..add('price', price)
          ..add('url', url)
          ..add('sellerName', sellerName)
          ..add('sellerRef', sellerRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NftsRecordBuilder implements Builder<NftsRecord, NftsRecordBuilder> {
  _$NftsRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _users;
  ListBuilder<DocumentReference<Object?>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object?>>();
  set users(ListBuilder<DocumentReference<Object?>>? users) =>
      _$this._users = users;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _sellerName;
  String? get sellerName => _$this._sellerName;
  set sellerName(String? sellerName) => _$this._sellerName = sellerName;

  DocumentReference<Object?>? _sellerRef;
  DocumentReference<Object?>? get sellerRef => _$this._sellerRef;
  set sellerRef(DocumentReference<Object?>? sellerRef) =>
      _$this._sellerRef = sellerRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NftsRecordBuilder() {
    NftsRecord._initializeBuilder(this);
  }

  NftsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _description = $v.description;
      _image = $v.image;
      _name = $v.name;
      _price = $v.price;
      _url = $v.url;
      _sellerName = $v.sellerName;
      _sellerRef = $v.sellerRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NftsRecord;
  }

  @override
  void update(void Function(NftsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftsRecord build() => _build();

  _$NftsRecord _build() {
    _$NftsRecord _$result;
    try {
      _$result = _$v ??
          new _$NftsRecord._(
              users: _users?.build(),
              description: description,
              image: image,
              name: name,
              price: price,
              url: url,
              sellerName: sellerName,
              sellerRef: sellerRef,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NftsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
