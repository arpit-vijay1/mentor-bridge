import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pageloadindicator_model.dart';
export 'pageloadindicator_model.dart';

class PageloadindicatorWidget extends StatefulWidget {
  const PageloadindicatorWidget({super.key});

  @override
  State<PageloadindicatorWidget> createState() =>
      _PageloadindicatorWidgetState();
}

class _PageloadindicatorWidgetState extends State<PageloadindicatorWidget> {
  late PageloadindicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageloadindicatorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
  }
}
