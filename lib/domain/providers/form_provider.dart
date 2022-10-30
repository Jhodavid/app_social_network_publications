
import 'package:app_social_network_publications/domain/entities/form_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormNotifier extends StateNotifier<FormModel> {

  FormNotifier(): super(
    FormModel(
      text: '', 
      isValidComment: false
    )
  );

  void setForm( FormModel comment ) {
    state = comment;
  }
}

final formProvider = StateNotifierProvider<FormNotifier, FormModel>((ref) {
  return FormNotifier();
});