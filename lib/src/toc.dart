/// TOC
///
/// https://sphinx-external-toc.readthedocs.io/en/latest/intro.html
///
/// TODO:
///   - Enum类型Format。

import 'package:yaml/yaml.dart';


class TocModel {
  late String format;
  late List<TocTreeModel> subtrees;

  dynamic fromYaml(String yaml){
    return loadYaml(yaml);
  }
}

class TocTreeModel {
  late List<TocEntryModel> entries;
  late List<TocTreeModel> subtrees;
}

class TocEntryModel {
  late String file;
  late String glob;
  late String url;
}
