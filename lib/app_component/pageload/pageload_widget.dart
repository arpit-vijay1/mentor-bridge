import '/app_component/pageloadindicator/pageloadindicator_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pageload_model.dart';
export 'pageload_model.dart';

class PageloadWidget extends StatefulWidget {
  const PageloadWidget({super.key});

  @override
  State<PageloadWidget> createState() => _PageloadWidgetState();
}

class _PageloadWidgetState extends State<PageloadWidget> {
  late PageloadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageloadModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().usertype == 'mentor') {
        _model.mentorid = await GetDataGroup.mentorCall.call(
          email: FFAppState().email,
        );
        FFAppState().update(() {
          FFAppState().UID = valueOrDefault<String>(
            GetDataGroup.mentorCall.id(
              (_model.mentorid?.jsonBody ?? ''),
            ),
            'id',
          );
          FFAppState().name = GetDataGroup.mentorCall.name(
            (_model.mentorid?.jsonBody ?? ''),
          )!;
        });

        context.pushNamed(
          'mentor_home',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 100),
            ),
          },
        );
      } else {
        _model.studentid = await GetDataGroup.studentCall.call(
          email: FFAppState().email,
        );
        FFAppState().update(() {
          FFAppState().UID = valueOrDefault<String>(
            GetDataGroup.studentCall.id(
              (_model.studentid?.jsonBody ?? ''),
            ),
            'id',
          );
          FFAppState().name = valueOrDefault<String>(
            GetDataGroup.studentCall.name(
              (_model.studentid?.jsonBody ?? ''),
            ),
            'name',
          );
        });
        setState(() {
          FFAppState().clearProfileCache();
          _model.apiRequestCompleted = false;
        });
        await _model.waitForApiRequestCompleted(minWait: 200);

        context.pushNamed(
          'student_home',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 100),
            ),
          },
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: FFAppState()
          .profile(
        requestFn: () => GetDataGroup.studentCall.call(
          email: FFAppState().email,
        ),
      )
          .then((result) {
        _model.apiRequestCompleted = true;
        return result;
      }),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
            body: const PageloadindicatorWidget(),
          );
        }
        final pageloadStudentResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
            body: FutureBuilder<ApiCallResponse>(
              future: FFAppState().search(
                requestFn: () => SearchGroup.allCall.call(
                  type: FFAppState().searchfilter,
                  q: 'default',
                ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return const PageloadindicatorWidget();
                }
                final containerAllResponse = snapshot.data!;
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).tertiary,
                        FlutterFlowTheme.of(context).secondary
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(0.0, -1.0),
                      end: const AlignmentDirectional(0, 1.0),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
