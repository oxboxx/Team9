import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({Key? key}) : super(key: key);

  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
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
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Happy Roulette',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 32,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Text(
                      'Team 9',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  if (valueOrDefault<bool>(
                      currentUserDocument?.instructor, false))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: AuthUserStreamWidget(
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'sellerMyCourses',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.leftToRight,
                                ),
                              },
                            );
                          },
                          text: 'My Goods',
                          options: FFButtonOptions(
                            width: 180,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (valueOrDefault<bool>(
                      currentUserDocument?.instructor, false))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: AuthUserStreamWidget(
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'sellerRegisterNFTs',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.leftToRight,
                                ),
                              },
                            );
                          },
                          text: 'Register NFTs',
                          options: FFButtonOptions(
                            width: 180,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (!valueOrDefault<bool>(
                      currentUserDocument?.instructor, false))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: AuthUserStreamWidget(
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('buyerMyCollections');
                          },
                          text: 'My Collections',
                          options: FFButtonOptions(
                            width: 180,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (!valueOrDefault<bool>(
                      currentUserDocument?.instructor, false))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: AuthUserStreamWidget(
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('buyerAllCollections');
                          },
                          text: 'All Collections',
                          options: FFButtonOptions(
                            width: 180,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (!valueOrDefault<bool>(
                      currentUserDocument?.instructor, false))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: AuthUserStreamWidget(
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('buyerAllSellers');
                          },
                          text: 'All Sellers',
                          options: FFButtonOptions(
                            width: 180,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (valueOrDefault<bool>(
                      currentUserDocument?.instructor, false))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: AuthUserStreamWidget(
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('sellerEditProfile');
                          },
                          text: 'Edit Profile',
                          options: FFButtonOptions(
                            width: 180,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await signOut();

                        context.goNamedAuth('signIn', mounted);
                      },
                      text: 'Log Out',
                      options: FFButtonOptions(
                        width: 180,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
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
            ],
          ),
        ),
      ),
    );
  }
}
