import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: AutoSizeText('سجل الان',style: TextStyle(
                color: Colors.red,
                decoration: TextDecoration.underline


              ),),
            ),
          ),
          AutoSizeText(' برجاء التسجيل لاستكمال الطلب'),
        ],
      ),
    );
  }
}
