import 'package:injectable/injectable.dart';
import 'package:what_to_do_app/Models/MusicModel.dart';

abstract class IMusicRepository{
  Future<List<MusicModel>?> getMusicByTitle(String titleName);
}