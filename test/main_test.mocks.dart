// Mocks generated by Mockito 5.0.13 from annotations
// in brick_app/test/main_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:ui' as _i4;

import 'package:brick_app/model/brick_set.dart' as _i8;
import 'package:brick_app/model/brick_set_list.dart' as _i7;
import 'package:brick_app/model/inventory.dart' as _i10;
import 'package:brick_app/model/moc.dart' as _i9;
import 'package:brick_app/model/rebrickable_model.dart' as _i5;
import 'package:brick_app/service/preferences_service.dart' as _i3;
import 'package:brick_app/service/rebrickable_service.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeRebrickableService extends _i1.Fake
    implements _i2.RebrickableService {}

/// A class which mocks [PreferencesService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPreferencesService extends _i1.Mock
    implements _i3.PreferencesService {
  MockPreferencesService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get apiKey =>
      (super.noSuchMethod(Invocation.getter(#apiKey), returnValue: '')
          as String);
  @override
  set apiKey(String? apiKey) =>
      super.noSuchMethod(Invocation.setter(#apiKey, apiKey),
          returnValueForMissingStub: null);
  @override
  String get userToken =>
      (super.noSuchMethod(Invocation.getter(#userToken), returnValue: '')
          as String);
  @override
  set userToken(String? userToken) =>
      super.noSuchMethod(Invocation.setter(#userToken, userToken),
          returnValueForMissingStub: null);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  dynamic set(String? key, String? value) =>
      super.noSuchMethod(Invocation.method(#set, [key, value]));
  @override
  String get(String? key) =>
      (super.noSuchMethod(Invocation.method(#get, [key]), returnValue: '')
          as String);
  @override
  void addListener(_i4.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i4.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}

/// A class which mocks [RebrickableModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockRebrickableModel extends _i1.Mock implements _i5.RebrickableModel {
  MockRebrickableModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RebrickableService get rebrickableService =>
      (super.noSuchMethod(Invocation.getter(#rebrickableService),
          returnValue: _FakeRebrickableService()) as _i2.RebrickableService);
  @override
  set rebrickableService(_i2.RebrickableService? _rebrickableService) => super
      .noSuchMethod(Invocation.setter(#rebrickableService, _rebrickableService),
          returnValueForMissingStub: null);
  @override
  bool get isLoggedIn =>
      (super.noSuchMethod(Invocation.getter(#isLoggedIn), returnValue: false)
          as bool);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i6.Future<String> login(
          String? username, String? password, String? apiKey) =>
      (super.noSuchMethod(
          Invocation.method(#login, [username, password, apiKey]),
          returnValue: Future<String>.value('')) as _i6.Future<String>);
  @override
  _i6.Future<String> loginWithToken(String? userToken, String? apiKey) => (super
      .noSuchMethod(Invocation.method(#loginWithToken, [userToken, apiKey]),
          returnValue: Future<String>.value('')) as _i6.Future<String>);
  @override
  _i6.Future<List<_i7.BrickSetList>> getUsersSetLists({int? listId}) => (super
      .noSuchMethod(Invocation.method(#getUsersSetLists, [], {#listId: listId}),
          returnValue:
              Future<List<_i7.BrickSetList>>.value(<_i7.BrickSetList>[])) as _i6
      .Future<List<_i7.BrickSetList>>);
  @override
  _i6.Future<List<_i8.BrickSet>> getSetsFromList({int? listId}) =>
      (super.noSuchMethod(
              Invocation.method(#getSetsFromList, [], {#listId: listId}),
              returnValue: Future<List<_i8.BrickSet>>.value(<_i8.BrickSet>[]))
          as _i6.Future<List<_i8.BrickSet>>);
  @override
  _i6.Future<List<_i9.Moc>> getMocsFromSet({String? setNum}) => (super
      .noSuchMethod(Invocation.method(#getMocsFromSet, [], {#setNum: setNum}),
          returnValue: Future<List<_i9.Moc>>.value(<_i9.Moc>[])) as _i6
      .Future<List<_i9.Moc>>);
  @override
  _i6.Future<List<_i10.Inventory>> getInventoriesOfSet({String? setNum}) =>
      (super.noSuchMethod(
              Invocation.method(#getInventoriesOfSet, [], {#setNum: setNum}),
              returnValue:
                  Future<List<_i10.Inventory>>.value(<_i10.Inventory>[]))
          as _i6.Future<List<_i10.Inventory>>);
  @override
  String toString() => super.toString();
  @override
  void addListener(_i4.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i4.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
