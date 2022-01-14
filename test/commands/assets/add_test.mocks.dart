// Mocks generated by Mockito 5.0.17 from annotations
// in lighthouse/test/commands/assets/add_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:io' as _i5;

import 'package:lighthouse/src/managers/file_manager.dart' as _i3;
import 'package:lighthouse/src/managers/pubspec_manager.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:yaml/yaml.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeYamlList_0 extends _i1.Fake implements _i2.YamlList {}

/// A class which mocks [FilesManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockFilesManager extends _i1.Mock implements _i3.FilesManager {
  MockFilesManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<String>> findInnerContent(_i5.FileSystemEntity? dir) =>
      (super.noSuchMethod(Invocation.method(#findInnerContent, [dir]),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i4.Future<List<String>>);
  @override
  _i4.Future<List<String>> removeUnNecessaryChildren(List<String>? list) =>
      (super.noSuchMethod(Invocation.method(#removeUnNecessaryChildren, [list]),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i4.Future<List<String>>);
  @override
  _i4.Future<bool> isFilePath(String? path) =>
      (super.noSuchMethod(Invocation.method(#isFilePath, [path]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  _i4.Future<bool> isDirPath(String? path) =>
      (super.noSuchMethod(Invocation.method(#isDirPath, [path]),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
  @override
  Iterable<_i5.FileSystemEntity> loadDirectoryFiles(_i5.Directory? directory) =>
      (super.noSuchMethod(Invocation.method(#loadDirectoryFiles, [directory]),
              returnValue: <_i5.FileSystemEntity>[])
          as Iterable<_i5.FileSystemEntity>);
  @override
  Iterable<_i5.FileSystemEntity> loadDirectoryJsonFiles(
          _i5.Directory? directory) =>
      (super.noSuchMethod(
              Invocation.method(#loadDirectoryJsonFiles, [directory]),
              returnValue: <_i5.FileSystemEntity>[])
          as Iterable<_i5.FileSystemEntity>);
  @override
  _i4.Future<Map<String, dynamic>> readJsonContent(_i5.File? file) =>
      (super.noSuchMethod(Invocation.method(#readJsonContent, [file]),
              returnValue:
                  Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i4.Future<Map<String, dynamic>>);
  @override
  _i4.Future<String> readFileContent(_i5.File? file) =>
      (super.noSuchMethod(Invocation.method(#readFileContent, [file]),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
  @override
  bool isEnoughToUseParent(String? parent, String? child) => (super
      .noSuchMethod(Invocation.method(#isEnoughToUseParent, [parent, child]),
          returnValue: false) as bool);
  @override
  String findFileName(String? path) =>
      (super.noSuchMethod(Invocation.method(#findFileName, [path]),
          returnValue: '') as String);
  @override
  String findFileExtension(String? path) =>
      (super.noSuchMethod(Invocation.method(#findFileExtension, [path]),
          returnValue: '') as String);
  @override
  List<String> findSupportedLocales(Iterable<_i5.FileSystemEntity>? files) =>
      (super.noSuchMethod(Invocation.method(#findSupportedLocales, [files]),
          returnValue: <String>[]) as List<String>);
  @override
  _i4.Future<List<_i5.File>> girDirectoryChildrenFlat(
          _i5.Directory? directory) =>
      (super.noSuchMethod(
              Invocation.method(#girDirectoryChildrenFlat, [directory]),
              returnValue: Future<List<_i5.File>>.value(<_i5.File>[]))
          as _i4.Future<List<_i5.File>>);
}

/// A class which mocks [PubSpecManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockPubSpecManager extends _i1.Mock implements _i6.PubSpecManager {
  MockPubSpecManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> setAssets(Iterable<String>? assetsBefore, _i5.File? file) =>
      (super.noSuchMethod(Invocation.method(#setAssets, [assetsBefore, file]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  Iterable<String> formatPaths(Iterable<String>? list) =>
      (super.noSuchMethod(Invocation.method(#formatPaths, [list]),
          returnValue: <String>[]) as Iterable<String>);
  @override
  bool isInYamlAssets(String? child, List<String>? assets) =>
      (super.noSuchMethod(Invocation.method(#isInYamlAssets, [child, assets]),
          returnValue: false) as bool);
  @override
  _i4.Future<Iterable<String>> getYamlAssets(_i5.File? yamlFile) =>
      (super.noSuchMethod(Invocation.method(#getYamlAssets, [yamlFile]),
              returnValue: Future<Iterable<String>>.value(<String>[]))
          as _i4.Future<Iterable<String>>);
  @override
  Iterable<MapEntry<dynamic, dynamic>> getPubspecDependencies(
          _i5.File? pubspec) =>
      (super.noSuchMethod(Invocation.method(#getPubspecDependencies, [pubspec]),
              returnValue: <MapEntry<dynamic, dynamic>>[])
          as Iterable<MapEntry<dynamic, dynamic>>);
  @override
  _i4.Future<_i2.YamlList> getPubspecAssetsYaml(_i5.File? file) =>
      (super.noSuchMethod(Invocation.method(#getPubspecAssetsYaml, [file]),
              returnValue: Future<_i2.YamlList>.value(_FakeYamlList_0()))
          as _i4.Future<_i2.YamlList>);
}
