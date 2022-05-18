import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:reseller_2d3d/constant/configs.dart';
import '/configs/custom_json_concerter.dart';
import '/interceptors/api_interceptor.dart';
import '/interceptors/log_request_interceptor.dart';
import '/interceptors/log_response_interceptor.dart';
import '/services/api_service.dart';
import 'package:http/io_client.dart' as http;

class APIClient extends ChopperClient {
  APIClient()
      : super(
          baseUrl: Config.baseOtherUrl,
          client: http.IOClient(
            HttpClient()
              ..connectionTimeout = Duration(
                seconds: Config.httpRequestTimeout,
              ),
          ),
          services: [
            APIService.create(),
          ],
          interceptors: [
            APIInterceptor(),
            LogRequestInterceptor(),
            LogResponseInterceptor(),
          ],
          converter: CustomJsonConverter(),
          errorConverter: CustomJsonConverter(),
        );
}
