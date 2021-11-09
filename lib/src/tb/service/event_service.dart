import 'package:luminator/src/tb/http/http_utils.dart';
import 'package:luminator/src/tb/model/entity_type_models.dart';
import 'package:luminator/src/tb/model/event_models.dart';
import 'package:luminator/src/tb/model/id/entity_id.dart';
import 'package:luminator/src/tb/model/page/page_link.dart';

import '../model/page/page_data.dart';
import '../thingsboard_client_base.dart';

PageData<Event> parseEventPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Event.fromJson(json));
}

class EventService {
  final ThingsboardClient _tbClient;

  factory EventService(ThingsboardClient tbClient) {
    return EventService._internal(tbClient);
  }

  EventService._internal(this._tbClient);

  Future<PageData<Event>> getEvents(
      EntityId entityId, String tenantId, TimePageLink pageLink,
      {String? eventType, RequestConfig? requestConfig}) async {
    var url =
        '/api/events/${entityId.entityType.toShortString()}/${entityId.id}';
    if (eventType != null) {
      url += '/$eventType';
    }
    var queryParams = pageLink.toQueryParameters();
    queryParams['tenantId'] = tenantId;
    var response = await _tbClient.get<Map<String, dynamic>>(url,
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEventPageData, response.data!);
  }
}
