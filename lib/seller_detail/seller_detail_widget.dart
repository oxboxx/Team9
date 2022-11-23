import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerDetailWidget extends StatefulWidget {
  const SellerDetailWidget({
    Key? key,
    this.userDoc,
    this.userRef,
  }) : super(key: key);

  final UsersRecord? userDoc;
  final DocumentReference? userRef;

  @override
  _SellerDetailWidgetState createState() => _SellerDetailWidgetState();
}

class _SellerDetailWidgetState extends State<SellerDetailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32,
          ),
        ),
        title: Text(
          'Seller Details',
          style: FlutterFlowTheme.of(context).title2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Hero(
                  tag: widget.userDoc!.photoUrl!,
                  transitionOnUserGestures: true,
                  child: Image.network(
                    widget.userDoc!.photoUrl!,
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      widget.userDoc!.displayName!,
                      style: FlutterFlowTheme.of(context).title2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      widget.userDoc!.address!,
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      widget.userDoc!.description!,
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'sellerMyCoursesCopy',
                    queryParams: {
                      'userDoc': serializeParam(
                        widget.userDoc,
                        ParamType.Document,
                      ),
                      'userRef': serializeParam(
                        widget.userRef,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      'userDoc': widget.userDoc,
                    },
                  );
                },
                text: 'Donate',
                options: FFButtonOptions(
                  width: 300,
                  height: 60,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
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
