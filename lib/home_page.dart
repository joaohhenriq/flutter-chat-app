import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 5,
          backgroundColor: Colors.blue[700],
          child: Icon(Icons.camera_alt),
          onPressed: () {
            print("hfsafas");
          },
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 7,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.view_list,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              SizedBox(width: 25),
              IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        _buildTopBar(),
        _buildListTile()
      ],
    );
  }

  _buildTopBar() {
    return Material(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Mensagens",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildListTile() {
    bool online = true;

    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white54, width: 3),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(0, 5),
                  blurRadius: 25)
            ]),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://portugal-103ca.kxcdn.com/wp-content/uploads/2019/05/Praia-de-Galapos.jpg"),
              ),
            ),
            online
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
