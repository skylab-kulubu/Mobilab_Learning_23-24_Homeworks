import '../../product/utility/text_utility.dart';

enum Skills {
  mainSkill,
  intelligent,
  leadership,
  responsibility,
}

extension SkillEnumExtension on Skills {
  String title() {
    switch (this) {
      case Skills.mainSkill:
        return TextUtil.mainSkill;
      case Skills.intelligent:
        return TextUtil.intelligent;
      case Skills.leadership:
        return TextUtil.leadership;
      default:
        return TextUtil.responsibility;
    }
  }
}
