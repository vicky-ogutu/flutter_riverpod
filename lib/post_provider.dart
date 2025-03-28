

import 'package:flutter_riverpod/post_service.dart';
import 'package:riverpod/riverpod.dart';

//post service provider
final PostServiceProvider =Provider<PostService>((ref) {
  return PostService();

});

//futureprovider for Api call

final submitfutureprovider = FutureProviderFamily<String, Map<String, String>>((ref, data) {
  final postService =ref.read(PostServiceProvider);
  return postService.submitPost(data["title"]!, data["body"]!);

});