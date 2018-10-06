/* import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import "messages.dart";
import "package:aun_project/login.dart";

//TODO: Add Velocity constant;
const double _kFlingVelocity = 2.0;

class Backdrop extends StatefulWidget{
    final Category currentCategory;
    final Widget frontLayer;
    final Widget backLayer;
    final Widget frontTitle;
    final Widget backTitle;

    const Backdrop({
        @required this.currentCategory,
        @required this.frontLayer,
        @required this.backLayer,
        @required this.frontTitle,
        @required this.backTitle,
    })     : assert(currentCategory != null),
             assert(frontLayer != null),
             assert(backLayer != null),
             assert(frontTitle != null),
             assert(backTitle != null);

        @override
        _BackdropState createState() => _BackdropState();
}

//TODO: Add _FrontLayer class
class _Frontlayer extends StatelessWidget {
    //TODO: Add on-tap callback
    const _Frontlayer({
        Key key,
        this.onTap,
        this.child,
    }) : super(key: key);

    final Widget child;
    final VoidCallback onTap;

    @override
    Widget build(BuildContext context) {
        return Material(
            elevation: 16.0,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                    //TODO: Add a GestureDetector
                    /* GestureDetector(
                        behavior: HitTestBehavior.opaque,
                       // onTap: onTap,
                        child: Container(
                            height: 40.0,
                            //alignment: AlignmentDirectional.centerStart,
                        ),
                    ), */
                     /* Expanded(
                        child: child,
                    ),
                ],
            ),
        );
    }
}
//TODO: Add _BackdropTitle class
//TODO: Add _BackdropState class
class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
        final GlobalKey _backdropKey = GlobalKey(debugLabel: "Backdrop");

        //TODO: Add AnimationController widget
        AnimationController _controller;

        @override
        void initState() {
            super.initState();
            _controller = AnimationController(
                duration: Duration(milliseconds: 300),
                value: 1.0,
                vsync: this,
            );
        }

        //TODO: Add override for didUpdateWidget
        @override
        void didUpdateWidget(Backdrop old) {
            super.didUpdateWidget(old);

            if(widget.currentCategory != old.currentCategory) {
                _toggleBackdropLayerVisibility();
            } else if (!_frontLayerVisible) {
                _controller.fling(velocity: _kFlingVelocity);
            }
        }

        @override
        void dispose() {
            _controller.dispose();
            super.dispose();
        }

        //TODO: Add functions to get and change front layer visibility
        bool get _frontLayerVisible {
            final AnimationStatus status = _controller.status;
            return status == AnimationStatus.completed ||
                status == AnimationStatus.forward;
        }

        void _toggleBackdropLayerVisibility() {
            _controller.fling(
                velocity: _frontLayerVisible ?- _kFlingVelocity : _kFlingVelocity);
        }


        //TODO: Add BuildContext and BoxConstraints parameters to _buildStack
        Widget _buildStack(BuildContext context, BoxConstraints constraints) {
            const double layerTitleHeight = 48.0;
            final Size layerSize = constraints.biggest;
            final double layerTop = layerSize.height - layerTitleHeight;

            //TODO: Create a RelativeRectTween Animation
            Animation<RelativeRect> layerAnimation = RelativeRectTween(
                begin: RelativeRect.fromLTRB(
                    0.0, layerTop, 0.0, layerSize.height),
                end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
            ).animate(_controller.view);


            return Stack(
                key: _backdropKey,
                    children: <Widget>[
                        ExcludeSemantics(
                            child: widget.backLayer,
                            excluding: _frontLayerVisible,
                        ),

                        //TODO: Add a postionedTransition
                        //TODO: Wrap front layer in _Frontlayer
                        PositionedTransition(
                            rect: layerAnimation,
                            child: _Frontlayer(
                                //TODO: Implement onTap property on _BackdropState
                                //onTap: _toggleBackdropLayerVisibility,
                                child: widget.frontLayer
                            ),
                        ),
                    ],    
            );
        }

        @override
        Widget build(BuildContext context) {
            var appBar = AppBar(
                brightness: Brightness.light,
                elevation: 0.0,
                //TODO: Replace leading menu icon with IconButton
                //TODO: Remove leading property
                //TODO: Create title with _BackdropTitle parameter
                leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: _toggleBackdropLayerVisibility,
                ),
                title: Text("AUN Portal"),
                actions: <Widget>[
                    //TODO: Add shortcut to login screen from trailing icons
                    IconButton(
                        icon: Icon(
                            Icons.tune,
                            semanticLabel: "filter",
                        ),
                        onPressed: () {
                            //TODO: Text search
                        },
                    ),
                    IconButton(
                        icon: Icon(
                            Icons.settings,
                            semanticLabel: "settings / login for now",
                        ),
                        onPressed: () {
                            //TODO: Add open login
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
                            );
                        },
                    ),
                ] ,
            );
            return Scaffold(
                appBar: appBar,
                //TODO: Return a LayoutBuilder widget
                body: LayoutBuilder(builder: _buildStack),
             */
 */