

import 'dart:html';

class Users {
   final String id;
   final String username;
   final PasswordInputElement password;
   final String location;
   final String device;
   Users(this.username, this.password, this.location, this.device, { required this.id });
}