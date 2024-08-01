import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/model/api_response.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/services/user_service.dart';

import 'login.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void _loadUserInfo() async {
    // String token = await getToken();
    // if (token == '') {
    //   Navigator.of(context).pushAndRemoveUntil(
    //       MaterialPageRoute(builder: (context) => Login()), (route) => false);
    // } else {
    //   ApiResponse response = await getUserDetails();
    //   if (response.error == null) {
    //     Navigator.of(context).pushAndRemoveUntil(
    //         MaterialPageRoute(builder: (context) => HomePage()),
    //         (route) => false);
    //   } else if (response.error == unauthorized) {
    //     Navigator.of(context).pushAndRemoveUntil(
    //         MaterialPageRoute(builder: (context) => Login()), (route) => false);
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //       content: Text('${response.error}'),
    //     ));
    //   }
    // }
  }

  @override
  void initState() {
    _loadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey[300],
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
