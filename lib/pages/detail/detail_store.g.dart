// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailStore on DetailStoreBase, Store {
  late final _$savePostAsyncAction =
      AsyncAction('DetailStoreBase.savePost', context: context);

  @override
  Future<void> savePost(BuildContext context) {
    return _$savePostAsyncAction.run(() => super.savePost(context));
  }

  late final _$DetailStoreBaseActionController =
      ActionController(name: 'DetailStoreBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$DetailStoreBaseActionController.startAction(
        name: 'DetailStoreBase.init');
    try {
      return super.init();
    } finally {
      _$DetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
