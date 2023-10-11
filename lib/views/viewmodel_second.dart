import 'package:ecesu_odev/core/enum/skills_enum.dart';
import 'package:mobx/mobx.dart';
part 'viewmodel_second.g.dart';

// ignore: library_private_types_in_public_api
class SecondViewModel = _SecondViewModelBase with _$SecondViewModel;

abstract class _SecondViewModelBase with Store {
  @observable
  int currentSkillIndex = 0;

  @computed
  String get currentSkill => Skills.values[currentSkillIndex].title();

  @action
  void nextSkill() {
    currentSkillIndex = (currentSkillIndex + 1) % Skills.values.length;
  }
}
