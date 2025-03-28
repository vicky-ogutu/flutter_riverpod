

import 'package:flutter_riverpod/post_service.dart';
import 'package:riverpod/riverpod.dart';

final PostServiceProvider =Provider<PostService>((ref) {
  return PostService();

});