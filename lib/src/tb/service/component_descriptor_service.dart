

import 'package:luminator/src/tb/http/http_utils.dart';
import 'package:luminator/src/tb/model/component_descriptor_models.dart';
import 'package:luminator/src/tb/model/model.dart';
import 'package:luminator/src/tb/thingsboard_client_base.dart';

class ComponentDescriptorService {
  final ThingsboardClient _tbClient;

  factory ComponentDescriptorService(ThingsboardClient tbClient) {
    return ComponentDescriptorService._internal(tbClient);
  }

  ComponentDescriptorService._internal(this._tbClient);

  Future<ComponentDescriptor?> getComponentDescriptorByClazz(
      String componentDescriptorClazz,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/component/$componentDescriptorClazz',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? ComponentDescriptor.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<List<ComponentDescriptor>> getComponentDescriptorsByType(
      ComponentType componentType,
      {RuleChainType ruleChainType = RuleChainType.CORE,
      RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>(
        '/api/components/${componentType.toShortString()}',
        queryParameters: {'ruleChainType': ruleChainType.toShortString()},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => ComponentDescriptor.fromJson(e)).toList();
  }

  Future<List<ComponentDescriptor>> getComponentDescriptorsByTypes(
      List<ComponentType> componentTypes,
      {RuleChainType ruleChainType = RuleChainType.CORE,
      RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/components',
        queryParameters: {
          'componentTypes':
              componentTypes.map((e) => e.toShortString()).join(','),
          'ruleChainType': ruleChainType.toShortString()
        },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => ComponentDescriptor.fromJson(e)).toList();
  }
}
