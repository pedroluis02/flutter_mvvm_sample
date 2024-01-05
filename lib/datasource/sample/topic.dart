import '../../domain/model/topic.dart';
import '../../domain/repository/topic.dart';

class SampleTopicRepositoryImpl implements TopicRepository {
  final _topics = const <Topic>[
    Topic('1', 'Clean Code'),
    Topic('2', 'Refactoring'),
    Topic('3', 'Software Testing'),
    Topic('4', 'Xtreme Programming (XP)'),
    Topic('5', 'Unified Rational Process (RUP)'),
  ];

  @override
  Future<List<Topic>> findAll() async => _topics;
}
