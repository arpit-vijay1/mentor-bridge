import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'student_navbar_model.dart';
export 'student_navbar_model.dart';

class StudentNavbarWidget extends StatefulWidget {
  const StudentNavbarWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? true;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<StudentNavbarWidget> createState() => _StudentNavbarWidgetState();
}

class _StudentNavbarWidgetState extends State<StudentNavbarWidget>
    with TickerProviderStateMixin {
  late StudentNavbarModel _model;

  final animationsMap = {
    'dividerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentNavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.hidden != true,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                child: Container(
                  width: 360.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).tertiary,
                        const Color(0xFF39D2C0)
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(1.0, -1.0),
                      end: const AlignmentDirectional(-1.0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            onEnter: ((event) async {
                              setState(
                                  () => _model.homeMouseRegionHovered1 = true);
                            }),
                            onExit: ((event) async {
                              setState(
                                  () => _model.homeMouseRegionHovered1 = false);
                            }),
                            child: Opacity(
                              opacity:
                                  widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                key: const ValueKey('HomeIconButton'),
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                hoverColor:
                                    FlutterFlowTheme.of(context).secondary,
                                hoverIconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                icon: Icon(
                                  key: const ValueKey('HomeIconButton'),
                                  Icons.cottage_outlined,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'student_home',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          if (widget.selectedPageIndex == 1)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation1']!),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            onEnter: ((event) async {
                              setState(
                                  () => _model.homeMouseRegionHovered2 = true);
                            }),
                            onExit: ((event) async {
                              setState(
                                  () => _model.homeMouseRegionHovered2 = false);
                            }),
                            child: Opacity(
                              opacity:
                                  widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                key: const ValueKey('HomeIconButton'),
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                hoverColor:
                                    FlutterFlowTheme.of(context).secondary,
                                hoverIconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                icon: Icon(
                                  key: const ValueKey('HomeIconButton'),
                                  Icons.search_rounded,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'student_search',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          if (widget.selectedPageIndex == 2)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation2']!),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                            child: FlutterFlowIconButton(
                              key: const ValueKey('ProfileIconButton'),
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 0.0,
                              buttonSize: 50.0,
                              hoverColor:
                                  FlutterFlowTheme.of(context).secondary,
                              icon: Icon(
                                key: const ValueKey('ProfileIconButton'),
                                Icons.chat_bubble_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'chat_main',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          if (widget.selectedPageIndex == 3)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation3']!),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                            child: FlutterFlowIconButton(
                              key: const ValueKey('ProfileIconButton'),
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 0.0,
                              buttonSize: 50.0,
                              hoverColor:
                                  FlutterFlowTheme.of(context).secondary,
                              icon: Icon(
                                key: const ValueKey('ProfileIconButton'),
                                Icons.person_outline,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'student_profile',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          if (widget.selectedPageIndex == 4)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation4']!),
                        ],
                      ),
                    ]
                        .divide(const SizedBox(width: 16.0))
                        .addToStart(const SizedBox(width: 16.0))
                        .addToEnd(const SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
