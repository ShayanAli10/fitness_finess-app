import 'package:flutter/material.dart';
import 'home_page.dart'; // Importing HomePage to navigate after successful login

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text editing controllers for username and password
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Simple validation to check login credentials
  bool _isLoginValid = true;

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "admin" && password == "12345") {
      // Navigate to HomePage on successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      // Invalid login credentials
      setState(() {
        _isLoginValid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login to Your Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                border: OutlineInputBorder(),
                errorText: _isLoginValid ? null : "Invalid credentials",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12), backgroundColor: Colors.blueAccent,
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  // Implement Forgot Password functionality if needed
                },
                child: Text('Forgot Password?'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  HomePage() {}
}
