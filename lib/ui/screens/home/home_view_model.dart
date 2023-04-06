import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int currentPage = 0;

  void setPage(int page) async {
    // if(page==3){
    //   await logout();
    //   _log.i("logout Successful");
    // }
    // else{
    currentPage = page;
    notifyListeners();
    // }
  }
}
