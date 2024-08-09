import 'package:flutter/material.dart';
import 'package:flutter_lapon/view/auth/reset_password.dart';

import '../../config/app_color.dart';
import '../../config/pref.dart';
import '../../viewmodel/auth_viewmodel.dart';
import '../../widget/custom_toast.dart';

class RequestCodePasswordPage extends StatefulWidget {
  const RequestCodePasswordPage({super.key});

  @override
  State<RequestCodePasswordPage> createState() => _RequestCodePasswordPageState();
}

class _RequestCodePasswordPageState extends State<RequestCodePasswordPage> {
  final TextEditingController emailController = TextEditingController();

  bool passwordVisible = true;
  bool isLoading = false;
  final Session _session = Session();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 32),
                Center(
                    child: Text(
                      "Request Code Reset Password",
                      style: fontTextStyle.copyWith(
                        color: AppColor.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                const SizedBox(height: 56),
                Text(
                  "Masukkan email\nuntuk meminta kode reset password",
                  style: fontTextStyle.copyWith(color: const Color(0xFF4F5E71)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                TextFormField(
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: AppColor.white,
                      filled: true,
                      labelStyle:
                      fontTextStyle.copyWith(color: const Color(0xff878E97)),
                      hintStyle:
                      fontTextStyle.copyWith(color:  const Color(0xff878E97)),
                      hintText: "Email",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Color(0xFFE8EDF1)),),
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFE8EDF1)),
                          borderRadius:
                          BorderRadius.all(Radius.circular(16))),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFFE8EDF1)),
                        borderRadius:
                        BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email harus di isi';
                      }
                      return null;
                    }),
                const SizedBox(height: 16),

                Container(
                  margin: const EdgeInsets.only(top: 18, bottom: 30),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.colorPrimaryGreen,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: isLoading ? const Center(child: CircularProgressIndicator(color: AppColor.white, strokeWidth: 2,)) : TextButton(
                      onPressed: () {
                        if (isLoading == false &&
                            _formKey.currentState!.validate()){
                          setState(() {
                            isLoading = true;
                          });
                          requestCode();
                        }
                      },
                      child: isLoading ? const Center(child: CircularProgressIndicator(color: AppColor.white,)) : Text(
                        "Kirim Sekarang",
                        style: fontTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColor.white,
                          fontSize: 16,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  requestCode(){
    AuthViewmodel().requestCode(email: emailController.text).then((value) {
      if (value.code == 200){
        setState(() {
          isLoading = false;
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword(email: emailController.text),));
      } else {
        setState(() {
          isLoading = false;
        });
        showToast(context: context, msg: value.message.toString());
      }
    });
  }
}
