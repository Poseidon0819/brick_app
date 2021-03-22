import 'dart:convert';

import 'package:brick_app/model/brick_set.dart';
import 'package:brick_app/service/rebrickable_api_constants.dart';
import 'package:http/http.dart';
import 'dart:async';

class RebrickableService {
  Client _client;
  String _token;

  bool get isAuthenticated => _token != null;

  RebrickableService({Client client}) {
    this._client = client ?? Client();
  }

  Future<bool> authenticate(String username, String password) async {
    final response = await _client.post(userTokenUrl,
        body: 'username=$username&password=$password');

    if (response.statusCode != 200) {
      return false;
    }

    final body = jsonDecode(response.body);
    _token = body['user_token'];
    return _token != null;
  }

  Future<List<BrickSet>> getUsersSetList({int setId}) async {
    final uri = setId == null
        ? userSetListUrl
        : Uri.parse(userSetListUrl.toString() + '?list_id=$setId');
    final response = await _client.get(uri, headers: createAuthHeader());

    if (response.statusCode != 200) {
      return null;
    }

    final body = jsonDecode(response.body);
    if (setId == null) {
      var results = body['results'] as List;
      return results
          .map((json) => BrickSet.fromJson(json))
          .toList(growable: false);
    } else {
      return [BrickSet.fromJson(body)];
    }
  }

  Map<String, String> createAuthHeader() => {'Authorization': 'key $_token'};
}
