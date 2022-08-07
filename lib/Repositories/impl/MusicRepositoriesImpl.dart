import 'package:injectable/injectable.dart';
import 'package:what_to_do_app/Models/MusicModel.dart';
import 'package:what_to_do_app/Repositories/IMusicRepository.dart';


@singleton 
class MusicRepositoriesImpl implements IMusicRepository{
  @override
  Future<List<MusicModel>?> getMusicByTitle(String titleName) async{
    return [MusicModel('adele someone like you', 3)];
  }
}