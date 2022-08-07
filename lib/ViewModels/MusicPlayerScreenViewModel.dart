import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:what_to_do_app/Base/BaseViewModel.dart';
import 'package:what_to_do_app/Repositories/IMusicRepository.dart';
import 'package:what_to_do_app/Repositories/impl/MusicRepositoriesImpl.dart';
import 'package:what_to_do_app/Setup.dart';

@injectable
class MusicPlayerScreenViewModel extends BaseViewModel {
  //FIELDS
  String? _textField1;
  //PROPERTIES
  String? get textField1 => _textField1;

  //SERVICES
  IMusicRepository _repository = getIt<MusicRepositoriesImpl>();

  Future<void> onSearchButtonClicked() async {
    final temp = await _repository.getMusicByTitle('adele');

    _textField1 = temp?[0].songTitle ?? 'NONE';
    String value = 'xxx';

    notifyListeners();
    
  }

  
}
