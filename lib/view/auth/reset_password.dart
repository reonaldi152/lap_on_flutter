import 'package:flutter/material.dart';

import '../../config/app_color.dart';
import '../../config/pref.dart';
import '../../viewmodel/auth_viewmodel.dart';
import '../../widget/custom_toast.dart';
import '../base_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key, this.email});
  final dynamic email;

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  bool passwordVisible = true;
  bool isLoadingRequest = false, isLoading = false;
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
                      "Reset Password",
                      style: fontTextStyle.copyWith(
                        color: AppColor.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                const SizedBox(height: 16),
                Text(
                  "Masukkan kode yang diterima melalu email, dan password baru Anda",
                  style: fontTextStyle.copyWith(color: const Color(0xFF4F5E71)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                TextFormField(
                    controller: codeController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: AppColor.white,
                      filled: true,
                      labelStyle:
                      fontTextStyle.copyWith(color: const Color(0xff878E97)),
                      hintStyle:
                      fontTextStyle.copyWith(color:  const Color(0xff878E97)),
                      hintText: "Kode",
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
                        return 'Kode harus di isi';
                      }
                      return null;
                    }),
                const SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: passwordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'kata sandi harus di isi';
                    }
                    return null;
                  },
                  maxLines: 1,
                  decoration: InputDecoration(
                      fillColor: AppColor.white,
                      filled: true,
                      labelStyle:
                      fontTextStyle.copyWith(color: const Color(0xff878E97)),
                      hintStyle:
                      fontTextStyle.copyWith(color:  const Color(0xff878E97)),
                      hintText: "Kata Sandi",
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
                      suffixIconColor: const Color(0xff324256),
                      suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          })),
                ),
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
                          resetPassword();
                        }
                      },
                      child: Text(
                        "Reset Password",
                        style: fontTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColor.white,
                          fontSize: 16,
                        ),
                      )),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: AppColor.colorPrimaryGreen)),
                  child: TextButton(
                      onPressed: () {
                        if (isLoadingRequest == false){
                          setState(() {
                            isLoadingRequest = true;
                          });
                          requestCode();
                        }
                      },
                      child: isLoadingRequest ? const Center(child: CircularProgressIndicator(color: AppColor.white,)) : Text(
                        "Kirim Ulang Kode",
                        style: fontTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColor.colorPrimaryGreen,
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
    AuthViewmodel().requestCode(email: widget.email).then((value) {
      if (value.code == 200){
        setState(() {
          isLoadingRequest = false;
        });
      } else {
        setState(() {
          isLoadingRequest = false;
        });
        showToast(context: context, msg: value.message.toString());
      }
    });
  }

  resetPassword(){
    AuthViewmodel().resetPassword(code: codeController.text, password: passwordController.text).then((value) {
      if (value.code == 200){
        setState(() {
          isLoading = false;
        });
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const BasePage()),
                  (Route<dynamic> route) => false);
      } else {
        setState(() {
          isLoading = false;
        });
        showToast(context: context, msg: "Terjadi Kesalahan, Harap hubungi admin");
      }
    });
  }
}
