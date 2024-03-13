import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String baseUrl = 'https://mentorbridge-app.onrender.com/api/auth';
  static Map<String, String> headers = {};
  static StudentLoginCall studentLoginCall = StudentLoginCall();
  static StudentSignupCall studentSignupCall = StudentSignupCall();
  static GenerateOTPCall generateOTPCall = GenerateOTPCall();
  static VerifyEmailCall verifyEmailCall = VerifyEmailCall();
  static MentorSignupCall mentorSignupCall = MentorSignupCall();
  static MentorLoginCall mentorLoginCall = MentorLoginCall();
}

class StudentLoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Student Login',
      apiUrl: '${AuthenticationGroup.baseUrl}/student/login',
      callType: ApiCallType.POST,
      headers: {},
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

  String? emailmessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? studentid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.studentId''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class StudentSignupCall {
  Future<ApiCallResponse> call({
    String? rollNo = '',
    String? name = '',
    String? email = '',
    String? password = '',
    int? phone,
    String? gender = '',
    String? year = '',
    String? branch = '',
    String? sec = '',
  }) async {
    final ffApiRequestBody = '''
{
  "rollNo": "$rollNo",
  "name": "$name",
  "email": "$email",
  "password": "$password",
  "phone": $phone,
  "gender": "$gender",
  "year": "$year",
  "branch": "$branch",
  "sec": "$sec"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Student signup',
      apiUrl: '${AuthenticationGroup.baseUrl}/student/signup',
      callType: ApiCallType.POST,
      headers: {},
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

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? studentId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.studentId''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
}

class GenerateOTPCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "$userId",
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Generate OTP',
      apiUrl: '${AuthenticationGroup.baseUrl}/generate-otp',
      callType: ApiCallType.POST,
      headers: {},
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

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class VerifyEmailCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? email = '',
    String? userOTP = '',
    String? userType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "$userId",
  "email": "$email",
  "userOTP": "$userOTP",
  "userType": "$userType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify email',
      apiUrl: '${AuthenticationGroup.baseUrl}/verify-email',
      callType: ApiCallType.POST,
      headers: {},
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

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class MentorSignupCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    String? phone = '',
    String? gender = '',
    String? department = '',
  }) async {
    final ffApiRequestBody = '''
{
"name": "$name",
"email": "$email",
"password": "$password",
"phone": "$phone",
"gender": "$gender",
"department": "$department"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mentor Signup',
      apiUrl: '${AuthenticationGroup.baseUrl}/mentor/signup',
      callType: ApiCallType.POST,
      headers: {},
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

  String? mentortoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  bool? sucessmentor(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? mentorid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentorId''',
      ));
}

class MentorLoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mentor Login',
      apiUrl: '${AuthenticationGroup.baseUrl}/mentor/login',
      callType: ApiCallType.POST,
      headers: {},
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

  bool? sucessmentor(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? mentormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End Authentication Group Code

/// Start Get Data Group Code

class GetDataGroup {
  static String baseUrl = 'https://mentorbridge-app.onrender.com/api';
  static Map<String, String> headers = {};
  static StudentCall studentCall = StudentCall();
  static MentorCall mentorCall = MentorCall();
}

class StudentCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? id = '',
    String? username = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Student',
      apiUrl: '${GetDataGroup.baseUrl}/student',
      callType: ApiCallType.GET,
      headers: {
        'access-token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZWJlYmZhMTIzZDA1NjVjZTI1YTk4MCIsImlhdCI6MTcxMDA2MjI0OCwiZXhwIjoxNzEyNjU0MjQ4fQ.1DlGCv00YMDE3BxqyPoTfzHdRZ9ZYB2wkNxSt-RHHeU',
      },
      params: {
        'username': username,
        'email': email,
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.username''',
      ));
  String? usertype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.userType''',
      ));
  String? rollno(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.rollNo''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.id''',
      ));
  String? sec(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.sec''',
      ));
  String? branch(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.branch''',
      ));
  String? year(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.year''',
      ));
  String? gender(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.gender''',
      ));
  int? phone(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.student.phone''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.student.email''',
      ));
}

class MentorCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? username = '',
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Mentor',
      apiUrl: '${GetDataGroup.baseUrl}/mentor',
      callType: ApiCallType.GET,
      headers: {
        'access-token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZWJlYmZhMTIzZDA1NjVjZTI1YTk4MCIsImlhdCI6MTcxMDA2MjI0OCwiZXhwIjoxNzEyNjU0MjQ4fQ.1DlGCv00YMDE3BxqyPoTfzHdRZ9ZYB2wkNxSt-RHHeU',
      },
      params: {
        'id': id,
        'username': username,
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentor.username''',
      ));
  String? usertype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentor.userType''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentor.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentor.email''',
      ));
  int? phone(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.mentor.phone''',
      ));
  String? gender(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentor.gender''',
      ));
  String? department(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentor.department''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mentor.id''',
      ));
}

/// End Get Data Group Code

/// Start search Group Code

class SearchGroup {
  static String baseUrl = 'https://mentorbridge-app.onrender.com/api';
  static Map<String, String> headers = {};
  static AllCall allCall = AllCall();
}

class AllCall {
  Future<ApiCallResponse> call({
    String? type = '',
    String? q = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'all',
      apiUrl: '${SearchGroup.baseUrl}/search',
      callType: ApiCallType.GET,
      headers: {
        'access-token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZWJlYmZhMTIzZDA1NjVjZTI1YTk4MCIsImlhdCI6MTcxMDA2MjI0OCwiZXhwIjoxNzEyNjU0MjQ4fQ.1DlGCv00YMDE3BxqyPoTfzHdRZ9ZYB2wkNxSt-RHHeU',
      },
      params: {
        'type': type,
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
}

/// End search Group Code

/// Start Update Data Group Code

class UpdateDataGroup {
  static String baseUrl = 'https://mentorbridge-app.onrender.com/api';
  static Map<String, String> headers = {};
  static UpdateStudentCall updateStudentCall = UpdateStudentCall();
  static UpdateMentorCall updateMentorCall = UpdateMentorCall();
}

class UpdateStudentCall {
  Future<ApiCallResponse> call({
    String? rollNo = '',
    String? name = '',
    int? phone,
    String? gender = '',
    String? year = '',
    String? branch = '',
    String? sec = '',
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "rollNo": "$rollNo",
  "name": "$name",
  "phone": $phone,
  "gender": "$gender",
  "year": "$year",
  "branch": "$branch",
  "sec": "$sec"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update student',
      apiUrl: '${UpdateDataGroup.baseUrl}/student/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'access-token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZWJlYmZhMTIzZDA1NjVjZTI1YTk4MCIsImlhdCI6MTcxMDA2MjI0OCwiZXhwIjoxNzEyNjU0MjQ4fQ.1DlGCv00YMDE3BxqyPoTfzHdRZ9ZYB2wkNxSt-RHHeU',
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
}

class UpdateMentorCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? gender = '',
    String? phone = '',
    String? department = '',
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "gender": "$gender",
  "department": "$department"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update mentor',
      apiUrl: '${UpdateDataGroup.baseUrl}/mentor/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'access-token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZWJlYmZhMTIzZDA1NjVjZTI1YTk4MCIsImlhdCI6MTcxMDA2MjI0OCwiZXhwIjoxNzEyNjU0MjQ4fQ.1DlGCv00YMDE3BxqyPoTfzHdRZ9ZYB2wkNxSt-RHHeU',
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

  bool? sucess(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic mentor(dynamic response) => getJsonField(
        response,
        r'''$.mentor''',
      );
}

/// End Update Data Group Code

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
