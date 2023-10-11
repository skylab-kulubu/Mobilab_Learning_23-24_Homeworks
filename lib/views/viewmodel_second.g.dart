// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewmodel_second.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SecondViewModel on _SecondViewModelBase, Store {
  Computed<String>? _$currentSkillComputed;

  @override
  String get currentSkill =>
      (_$currentSkillComputed ??= Computed<String>(() => super.currentSkill,
              name: '_SecondViewModelBase.currentSkill'))
          .value;

  late final _$currentSkillIndexAtom =
      Atom(name: '_SecondViewModelBase.currentSkillIndex', context: context);

  @override
  int get currentSkillIndex {
    _$currentSkillIndexAtom.reportRead();
    return super.currentSkillIndex;
  }

  @override
  set currentSkillIndex(int value) {
    _$currentSkillIndexAtom.reportWrite(value, super.currentSkillIndex, () {
      super.currentSkillIndex = value;
    });
  }

  late final _$_SecondViewModelBaseActionController =
      ActionController(name: '_SecondViewModelBase', context: context);

  @override
  void nextSkill() {
    final _$actionInfo = _$_SecondViewModelBaseActionController.startAction(
        name: '_SecondViewModelBase.nextSkill');
    try {
      return super.nextSkill();
    } finally {
      _$_SecondViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentSkillIndex: ${currentSkillIndex},
currentSkill: ${currentSkill}
    ''';
  }
}
