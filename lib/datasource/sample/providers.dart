import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repository/topic.dart';
import 'topic.dart';

final topicRepositoryProvider =
    Provider<TopicRepository>((ref) => SampleTopicRepositoryImpl());
