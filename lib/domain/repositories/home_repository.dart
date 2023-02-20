import '../entities/portfolio.dart';

abstract class HomeRepository {
  Future<Portfolio?> getPortfolio();
}
