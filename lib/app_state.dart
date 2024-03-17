import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _usertype = prefs.getString('ff_usertype') ?? _usertype;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _UID = prefs.getString('ff_UID') ?? _UID;
    });
    _safeInit(() {
      _selectedChat = prefs.getString('ff_selectedChat')?.ref ?? _selectedChat;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _usertype = '';
  String get usertype => _usertype;
  set usertype(String value) {
    _usertype = value;
    prefs.setString('ff_usertype', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  String _searchfilter = 'all';
  String get searchfilter => _searchfilter;
  set searchfilter(String value) {
    _searchfilter = value;
  }

  String _UID = '';
  String get UID => _UID;
  set UID(String value) {
    _UID = value;
    prefs.setString('ff_UID', value);
  }

  DocumentReference? _selectedChat;
  DocumentReference? get selectedChat => _selectedChat;
  set selectedChat(DocumentReference? value) {
    _selectedChat = value;
    value != null
        ? prefs.setString('ff_selectedChat', value.path)
        : prefs.remove('ff_selectedChat');
  }

  final _profileManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> profile({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _profileManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProfileCache() => _profileManager.clear();
  void clearProfileCacheKey(String? uniqueKey) =>
      _profileManager.clearRequest(uniqueKey);

  final _searchManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> search({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _searchManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSearchCache() => _searchManager.clear();
  void clearSearchCacheKey(String? uniqueKey) =>
      _searchManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
