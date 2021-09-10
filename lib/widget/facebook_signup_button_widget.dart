import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_signin_example/provider/facebook_sign_in.dart';
import 'package:provider/provider.dart';

class FacebookSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(4),
        child: OutlineButton.icon(
          label: Text(
            'Facebook',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          highlightedBorderColor: Colors.black,
          borderSide: BorderSide(color: Colors.black),
          textColor: Colors.black,
          icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blueAccent),
          onPressed: () {
            final provider =
                Provider.of<FacebookSignInProvider>(context, listen: false);
            provider.login();
          },
        ),
      );
}
