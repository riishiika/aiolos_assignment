import 'package:aiolos_assignment/screens/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  static const String idScreen = "login";
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String username, String password) async {
    try {
      Response response = await post(
          Uri.parse('https://stage.getsetplay.co/api/login.php'),
          body: {'username': username, 'password': password});
      if (response.statusCode == 400 &&
          username == "ganesh@aiolos.solutions" &&
          password == "ganesh@123") {
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductScreen()));
        // ignore: use_build_context_synchronously
        Fluttertoast.showToast(
            msg: "Login Successfully!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: const Color.fromRGBO(156, 100, 134, 6),
            textColor: Colors.white,
            fontSize: 20);
      } else {
        Fluttertoast.showToast(
            msg: "Failed try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: const Color.fromRGBO(156, 100, 134, 6),
            textColor: Colors.white,
            fontSize: 20);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Widget _buildUsernameTF() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              height: 45.0,
              child: TextFormField(
                style: const TextStyle(color: Color.fromRGBO(156, 100, 134, 6)),
                controller: usernameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(156, 100, 134, 6),
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(156, 100, 134, 6),
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.people,
                      color: Color.fromRGBO(156, 100, 134, 6)),
                  contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildPasswordTF() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 45.0,
            child: TextFormField(
              style: const TextStyle(color: Color.fromRGBO(156, 100, 134, 6)),
              controller: passwordController,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              autofocus: false,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(156, 100, 134, 6),
                  fontWeight: FontWeight.normal,
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Color.fromRGBO(156, 100, 134, 6)),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromRGBO(156, 100, 134, 6),
                ),
                contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginButton() {
    return GestureDetector(
      onTap: () {
        login(usernameController.text.toString(),
            passwordController.text.toString());
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 35,
            width: 300,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(156, 100, 134, 6),
                borderRadius: BorderRadius.circular(15)),
            child: const Center(
                child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }

  Widget _forgetText() {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(
            msg: "Forgot Password?",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: const Color.fromRGBO(156, 100, 134, 6),
            textColor: Colors.white,
            fontSize: 20);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 2, 15, 0),
        child: Container(
          height: 15,
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            Text(
              "Forgot Password?",
              style: TextStyle(color: Color.fromRGBO(156, 100, 134, 6)),
            )
          ]),
        ),
      ),
    );
  }

  Widget _registerText() {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(
            msg: "Register Here",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
            backgroundColor: const Color.fromRGBO(156, 100, 134, 6),
            textColor: Colors.white,
            fontSize: 20);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Container(
          height: 20,
          width: 92,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(156, 100, 134, 6),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
            Text(
              " Register Here",
              style: TextStyle(color: Colors.white),
            )
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Expanded(
              flex: 3,
              child: Image(image: AssetImage('assests/images/login_top.png')),
            ),
            const Spacer(
              flex: 2,
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: 'LOGIN',
                  style: TextStyle(
                      color: Color.fromRGBO(156, 100, 134, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            _buildUsernameTF(),
            _buildPasswordTF(),
            const SizedBox(
              height: 2,
            ),
            _loginButton(),
            _forgetText(),
            const SizedBox(
              height: 40,
            ),
            _registerText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 3,
                  child: Image(
                      image: AssetImage('assests/images/login_bottom.png')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
