import 'package:get/get.dart';

class RegisterState extends GetxController {
  Map<String, String> data = {};
  String errorMsg;



  submit() async {
    // try {
    //   UserCredential userCredential =
    //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //     email: data["email"],
    //     password: data["password"],
    //   );
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'weak-password') {
    //     errorMsg = "Password terlalu lemah :(";
    //   } else if (e.code == 'email-already-in-use') {
    //     print('Email ini sudah teregistrasi :)');
    //     errorMsg = "Email ini sudah teregistrasi :)";
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }
}
