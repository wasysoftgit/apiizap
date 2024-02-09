import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start IDEALZAP Group Code

class IdealzapGroup {
  static String baseUrl = 'https://api.idealzap.com.br';
  static Map<String, String> headers = {};
  static CriarInstanciaCall criarInstanciaCall = CriarInstanciaCall();
  static CriarInstanciaChatwasyCall criarInstanciaChatwasyCall =
      CriarInstanciaChatwasyCall();
  static DeletarInstanciaCall deletarInstanciaCall = DeletarInstanciaCall();
  static IntanceInfoCall intanceInfoCall = IntanceInfoCall();
  static InstancePegarQRCodeCall instancePegarQRCodeCall =
      InstancePegarQRCodeCall();
  static InstanceLogoutCall instanceLogoutCall = InstanceLogoutCall();
  static PostTypebotCall postTypebotCall = PostTypebotCall();
  static DesativarTypebotCall desativarTypebotCall = DesativarTypebotCall();
}

class CriarInstanciaCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = 'nome',
    String? token = 'token',
  }) async {
    final ffApiRequestBody = '''
{
  "instanceName": "$nomeInstancia",
  "token": "$token",
  "qrcode": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar instancia',
      apiUrl: '${IdealzapGroup.baseUrl}/instance/create',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '0856d6b30280e45b219c8d13cffd9d48',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.hash.apikey''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.status''',
      ));
  String? nomeinstancia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceName''',
      ));
  String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrcode.code''',
      ));
  dynamic nomeemuso(dynamic response) => getJsonField(
        response,
        r'''$.response.message''',
      );
}

class CriarInstanciaChatwasyCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = 'nome',
    String? token = 'token',
    String? numero = '',
    String? idchat = '',
    String? tokenChat = '',
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
  "instanceName": "$nomeInstancia",
  "token": "$token",
  "qrcode": true,
  "number": "$numero",
  "chatwoot_account_id": "$idchat",
  "chatwoot_token": "$tokenChat",
  "chatwoot_url": "$url",
  "chatwoot_sign_msg": true,
  "chatwoot_reopen_conversation": true,
  "chatwoot_conversation_pending": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar instancia chatwasy',
      apiUrl: '${IdealzapGroup.baseUrl}/instance/create',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '0856d6b30280e45b219c8d13cffd9d48',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.hash.apikey''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.status''',
      ));
  String? nomeinstancia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceName''',
      ));
  List<String>? qrcode(dynamic response) => (getJsonField(
        response,
        r'''$.qrcode.code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic nomeemuso(dynamic response) => getJsonField(
        response,
        r'''$.response.message''',
      );
}

class DeletarInstanciaCall {
  Future<ApiCallResponse> call({
    String? nome = 'nome',
    String? token = 'ghtrrr',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deletar instancia',
      apiUrl: '${IdealzapGroup.baseUrl}/instance/delete/$nome',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey': '$token',
      },
      params: {
        '': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic sucesso(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic mensagem(dynamic response) => getJsonField(
        response,
        r'''$.response.message''',
      );
}

class IntanceInfoCall {
  Future<ApiCallResponse> call({
    String? token = '456789e',
    String? nome = 'bre',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Intance info',
      apiUrl: '${IdealzapGroup.baseUrl}/instance/connectionState/$nome',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '$token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.state''',
      ));
}

class InstancePegarQRCodeCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Instance  Pegar QR Code ',
      apiUrl: '${IdealzapGroup.baseUrl}/instance/connect/$nome',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '$token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic qrcode(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
}

class InstanceLogoutCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Instance  Logout',
      apiUrl: '${IdealzapGroup.baseUrl}/instance/logout/$nome',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey': '$token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostTypebotCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? link = '',
    String? url = '',
    int? tempo,
    String? token = '',
    String? nometype = '',
    bool? ativar = false,
  }) async {
    final ffApiRequestBody = '''
{
  "enabled": $ativar,
  "url": "$url",
  "typebot": "$nometype",
  "expire": $tempo,
  "keyword_finish": "#SAIR",
  "delay_message": 1000,
  "unknown_message": "",
  "listening_from_me": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'post typebot',
      apiUrl: '${IdealzapGroup.baseUrl}/typebot/set/$nome',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic ativo(dynamic response) => getJsonField(
        response,
        r'''$.typebot.typebot.enabled''',
      );
}

class DesativarTypebotCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? url = '',
    String? token = '',
    String? nometype = '',
  }) async {
    final ffApiRequestBody = '''
{
  "enabled": false,
  "url": "$url",
  "typebot": "$nometype",
  "expire": 20,
  "keyword_finish": "#SAIR",
  "delay_message": 1000,
  "unknown_message": "",
  "listening_from_me": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'desativar typebot',
      apiUrl: '${IdealzapGroup.baseUrl}/typebot/set/$nome',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? ativo(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.typebot.typebot.enabled''',
      ));
}

/// End IDEALZAP Group Code

/// Start supabase Group Code

class SupabaseGroup {
  static String baseUrl = 'https://zmmfrjnuygztltuzocyx.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU',
  };
  static QuantidadeIstanciaCall quantidadeIstanciaCall =
      QuantidadeIstanciaCall();
  static BuscarInstanciaIdCall buscarInstanciaIdCall = BuscarInstanciaIdCall();
}

class QuantidadeIstanciaCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'quantidade istancia',
      apiUrl: '${SupabaseGroup.baseUrl}/usuario?select=*\'',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class BuscarInstanciaIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscar instancia id',
      apiUrl: '${SupabaseGroup.baseUrl}/estancia?id=eq.$id&select=',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? istancia(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

/// End supabase Group Code

class ConsultarUsuariosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'consultar usuarios',
      apiUrl: 'https://zmmfrjnuygztltuzocyx.supabase.co/rest/v1/usuario',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ConsultarUsuariosIdCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'consultar usuarios id',
      apiUrl: 'https://zmmfrjnuygztltuzocyx.supabase.co/rest/v1/usuario?',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
