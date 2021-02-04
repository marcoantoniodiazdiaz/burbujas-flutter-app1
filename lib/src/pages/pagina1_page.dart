import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/src/widgets/design_text.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF3F6FF),
      body: Column(
        children: [_ParteAzul(size: size), _ParteLista()],
      ),
    );
  }
}

class _ParteLista extends StatelessWidget {
  const _ParteLista({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class _ParteAzul extends StatefulWidget {
  const _ParteAzul({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  __ParteAzulState createState() => __ParteAzulState();
}

class __ParteAzulState extends State<_ParteAzul> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      // height: size.height * 0.55,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff713DE2),
            Color(0xff641CAE),
          ],
        ),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(120)),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.times, color: Colors.white),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.more_horiz, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                DesignText("Home", color: Colors.white, fontSize: 20),
                Icon(Icons.arrow_right, color: Colors.white),
                DesignText("Source", color: Colors.white, fontSize: 20),
              ],
            ),
            SizedBox(height: 20),
            DesignText("Design", color: Colors.white, fontSize: 55),
            DesignText("files", color: Colors.white, fontSize: 55),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(width: 20),
                Flexible(
                  child: TextFormField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Search ...",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      this.index = 0;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: (this.index == 0)
                          ? Border.all(color: Colors.white, width: 2)
                          : null,
                    ),
                    child: Icon(Icons.folder,
                        color: (this.index == 0)
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      this.index = 1;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: (this.index == 1)
                          ? Border.all(color: Colors.white, width: 2)
                          : null,
                    ),
                    child: Icon(FontAwesomeIcons.solidFile,
                        color: (this.index == 1)
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
