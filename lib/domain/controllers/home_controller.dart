import 'dart:async';

import 'package:get/get.dart';

import '../entities/portfolio.dart';
import '../repositories/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepository;

  HomeController({required this.homeRepository});

  static String homeId = "homeId";

  @override
  void onInit() {
    _getPortfolio();
    Future.delayed(const Duration(milliseconds: 100), () {
      isShowingLoader = true;
    });
    super.onInit();
  }

  bool _isShowingLoader = false;

  bool get isShowingLoader => _isShowingLoader;

  set isShowingLoader(bool value) {
    _isShowingLoader = value;
    update([homeId]);
  }

  bool _isShowingPage = false;

  bool get isShowingPage => _isShowingPage;

  set isShowingPage(bool value) {
    _isShowingPage = value;
    update([homeId]);
  }

  bool _isShowingEnglish = false;

  bool get isShowingEnglish => _isShowingEnglish;

  set isShowingEnglish(bool value) {
    _isShowingEnglish = value;
    update([homeId]);
  }

  int _currentProjectImage = 0;

  int get currentProjectImage => _currentProjectImage;

  set currentProjectImage(int value) {
    _currentProjectImage = value;
    update([homeId]);
  }

  Portfolio? _portfolio;

  Portfolio? get portfolio => _portfolio;

  set portfolio(Portfolio? value) {
    _portfolio = value;
    update([homeId]);
  }

  Future<void> _getPortfolio() async {
    try {
      final Portfolio? result = await homeRepository.getPortfolio();
      if (result != null) {
        portfolio = result;
        isShowingLoader = false;
        isShowingPage = true;
      }
    } catch (error) {
      // print(error);
    }
  }
}
