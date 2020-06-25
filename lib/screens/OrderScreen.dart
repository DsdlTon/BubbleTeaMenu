import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String dropdownValue = 'Normal';
  String bubbleValue = 'Bubble';
  String whipValue = 'No';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "DsdlTon's MilkTea",
          style: TextStyle(
            color: Colors.orange[300],
            fontSize: 18.0,
          ),
        ),
        actions: <Widget>[
          Icon(Icons.person_outline, color: Colors.orange[300]),
          Icon(Icons.favorite_border, color: Colors.orange[300]),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              // color: Colors.white,
              width: 250.0,
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '45.00฿',
                    style: TextStyle(
                      color: Colors.orange[300],
                      fontSize: 45.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Promotion Deal till's 05/08/20",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              width: double.infinity,
              // color: Colors.white,
              child: Text(
                'Brown Sugar',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.grey.withOpacity(0.4),
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1.0,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 190.0,
                  height: 350.0,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/pealMilk.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Perl Milk',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.grey.withOpacity(0.4),
                        fontWeight: FontWeight.w500,
                        letterSpacing: -2,
                      ),
                    ),
                    Container(
                      // color: Colors.white,
                      width: 160,
                      margin: EdgeInsets.only(top: 60.0, left: 10.0),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Colors.grey[900],
                        ),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Sweet Level',
                            labelStyle: TextStyle(
                              color: Colors.orange[300],
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: Colors.orange[700]),
                            ),
                          ),
                          value: dropdownValue,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.orange[300],
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.orange[300]),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>[
                            'Normal',
                            'Low-Sweet',
                            'Sweet-Free',
                            'Add Sweet'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.orange[300], fontSize: 15.0),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      width: 160,
                      // color: Colors.white,
                      margin: EdgeInsets.only(top: 20.0, left: 10.0),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Colors.grey[900],
                        ),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Bubble',
                            labelStyle: TextStyle(
                              color: Colors.orange[300],
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          value: bubbleValue,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.orange[300],
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.orange[300]),
                          onChanged: (String newValue) {
                            setState(() {
                              bubbleValue = newValue;
                            });
                          },
                          items: <String>[
                            'Bubble',
                            'Golden Bubble',
                            'Jelly',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.orange[300], fontSize: 15.0),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      width: 160,
                      // color: Colors.white,
                      margin: EdgeInsets.only(top: 20.0, left: 10.0),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Colors.grey[900],
                        ),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Whip Cream',
                            labelStyle: TextStyle(
                              color: Colors.orange[300],
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          value: whipValue,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.orange[300],
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.orange[300]),
                          onChanged: (String newValue) {
                            setState(() {
                              whipValue = newValue;
                            });
                          },
                          items: <String>[
                            'No',
                            'Yes',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.orange[300], fontSize: 15.0),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.orange[700],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  'ORDER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
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
