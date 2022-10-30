
import 'package:app_social_network_publications/domain/entities/comment_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentNotifier extends StateNotifier<List<Comment>> {

  CommentNotifier(): super([]);

  void addComment( Comment comment ) {

    state = [ ...state, comment ];
  }
}

final commentProvider = StateNotifierProvider<CommentNotifier, List<Comment>>((ref) {
  return CommentNotifier();
});