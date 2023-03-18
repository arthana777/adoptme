import '../pets_model.dart';
import 'package:adoptme/History.dart';

abstract class HistoryDb{
  void inserthi (PetsModel value);
  //List<PetsModel> gethi();
}
class HistoryFun extends HistoryDb{
  // @override
  // List<PetsModel> gethi() {
  //
  // }

  @override
  void inserthi(PetsModel value) {

    petsmodelNotifier.value.add(value);
    petsmodelNotifier.notifyListeners();
  }

}