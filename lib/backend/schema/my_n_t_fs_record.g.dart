// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_n_t_fs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyNTFsRecord> _$myNTFsRecordSerializer =
    new _$MyNTFsRecordSerializer();

class _$MyNTFsRecordSerializer implements StructuredSerializer<MyNTFsRecord> {
  @override
  final Iterable<Type> types = const [MyNTFsRecord, _$MyNTFsRecord];
  @override
  final String wireName = 'MyNTFsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyNTFsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  MyNTFsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyNTFsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$MyNTFsRecord extends MyNTFsRecord {
  @override
  final String? name;
  @override
  final BuiltList<DocumentReference<Object?>>? users;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final int? price;
  @override
  final String? url;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MyNTFsRecord([void Function(MyNTFsRecordBuilder)? updates]) =>
      (new MyNTFsRecordBuilder()..update(updates))._build();

  _$MyNTFsRecord._(
      {this.name,
      this.users,
      this.description,
      this.image,
      this.price,
      this.url,
      this.ffRef})
      : super._();

  @override
  MyNTFsRecord rebuild(void Function(MyNTFsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyNTFsRecordBuilder toBuilder() => new MyNTFsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyNTFsRecord &&
        name == other.name &&
        users == other.users &&
        description == other.description &&
        image == other.image &&
        price == other.price &&
        url == other.url &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), users.hashCode),
                        description.hashCode),
                    image.hashCode),
                price.hashCode),
            url.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyNTFsRecord')
          ..add('name', name)
          ..add('users', users)
          ..add('description', description)
          ..add('image', image)
          ..add('price', price)
          ..add('url', url)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MyNTFsRecordBuilder
    implements Builder<MyNTFsRecord, MyNTFsRecordBuilder> {
  _$MyNTFsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MyNTFsRecordBuilder() {
    MyNTFsRecord._initializeBuilder(this);
  }

  MyNTFsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _users = $v.users?.toBuilder();
      _description = $v.description;
      _image = $v.image;
      _price = $v.price;
      _url = $v.url;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyNTFsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyNTFsRecord;
  }

  @override
  void update(void Function(MyNTFsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyNTFsRecord build() => _build();

  _$MyNTFsRecord _build() {
    _$MyNTFsRecord _$result;
    try {
      _$result = _$v ??
          new _$MyNTFsRecord._(
              name: name,
              users: _users?.build(),
              description: description,
              image: image,
              price: price,
              url: url,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MyNTFsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
