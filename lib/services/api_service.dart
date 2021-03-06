import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/rest")
abstract class APIService extends ChopperService {
  static APIService create([ChopperClient client]) => _$APIService(client);
}
