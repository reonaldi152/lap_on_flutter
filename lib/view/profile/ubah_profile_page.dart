import 'package:flutter/material.dart';

import '../../config/app_color.dart';
import '../../config/pref.dart';
import '../base_page.dart';

class UbahProfilePage extends StatefulWidget {
  const UbahProfilePage({super.key});

  @override
  State<UbahProfilePage> createState() => _UbahProfilePageState();
}

class _UbahProfilePageState extends State<UbahProfilePage> {
  bool isLoading = false, enableButton = false, btnUpdateProfile = false;
  final Session _session = Session();
  final TextEditingController namaController = TextEditingController(),noTelpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  void changeEnableButton(setState) {
    setState(() {
      enableButton = true;
    });
  }

  @override
  void initState() {
    // getUserProfile();
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    noTelpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color(0xff94A8BE),
        elevation: 0.2,
        backgroundColor: AppColor.white,
        title: Text(
          "Ubah Profil",
          style: fontTextStyle.copyWith(
              color: AppColor.black,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16,
            )),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 80),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              // gradient: LinearGradient(
              //   colors: [Color(0xffA78A50), Color(0xff8C6D42)],
              // ),
              color: AppColor.colorPrimaryGreen,
            ),
            width: double.infinity,
            height: 148,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).padding.top + 48),
                    TextFormField(
                      controller: namaController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        fillColor: AppColor.white,
                        filled: true,
                        labelStyle: fontTextStyle.copyWith(
                            color: const Color(0xff878E97)),
                        hintStyle: fontTextStyle.copyWith(
                            color: const Color(0xff878E97)),
                        hintText: "Nama Lengkap",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(color: Color(0xFFE8EDF1)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                      onChanged: (value) {
                        // debugPrint("value nama $value");
                        // if (_users?.name != value) {
                        //   setState(() {
                        //     btnUpdateProfile = true;
                        //   });
                        // } else if (_users?.name == value){
                        //   setState(() {
                        //     btnUpdateProfile = false;
                        //   });
                        // }
                      },
                    ),
                    const SizedBox(height: 16),
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 8),
                    //   child: Text(
                    //     "Jenis Kelamin",
                    //     style: fontTextStyle.copyWith(
                    //       fontWeight: FontWeight.w900,
                    //       color: AppColor.colorTextBlack,
                    //       fontSize: 12,
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 16),
                    //   child: DropdownButtonCustom(
                    //     hintText: "Jenis Kelamin",
                    //     items: _gender
                    //         .map((item) => DropdownMenuItem<String>(
                    //       value: item,
                    //       child: Text(
                    //         item,
                    //         style: fontTextStyle.copyWith(
                    //           fontSize: 14,
                    //         ),
                    //       ),
                    //     ))
                    //         .toList(),
                    //     textValidator: "Jenis kelamin harus di isi",
                    //     onSaved: (value) {
                    //       debugPrint("onsave $value");
                    //     },
                    //     onChanged: (value){
                    //       if (value == "Laki-Laki"){
                    //         setState(() {
                    //           valueGender = "L";
                    //         });
                    //       } else {
                    //         setState(() {
                    //           valueGender = "P";
                    //         });
                    //       }
                    //     },
                    //   ),
                    // ),
                    // const SizedBox(height: 16),
                    // TextFormField(
                    //     controller: emailController,
                    //     autovalidateMode: AutovalidateMode.onUserInteraction,
                    //     textInputAction: TextInputAction.next,
                    //     keyboardType: TextInputType.emailAddress,
                    //     decoration: InputDecoration(
                    //       fillColor: AppColor.white,
                    //       filled: true,
                    //       labelStyle: fontTextStyle.copyWith(
                    //           color: const Color(0xff878E97)),
                    //       hintStyle: fontTextStyle.copyWith(
                    //           color: const Color(0xff878E97)),
                    //       hintText: "Email",
                    //       contentPadding: const EdgeInsets.symmetric(
                    //           horizontal: 16, vertical: 12),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(16),
                    //         borderSide: const BorderSide(color: Color(0xFFE8EDF1)),
                    //       ),
                    //       enabledBorder: const OutlineInputBorder(
                    //           borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                    //           borderRadius: BorderRadius.all(Radius.circular(16))),
                    //       focusedBorder: const OutlineInputBorder(
                    //         borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                    //         borderRadius: BorderRadius.all(Radius.circular(16)),
                    //       ),
                    //     ),
                    //     validator: (value) {
                    //       if (value == null || value.isEmpty) {
                    //         return 'Email harus di isi';
                    //       } else if (value.isNotEmpty) {
                    //         if (!emailRegex.hasMatch(value)) {
                    //           return 'Email tidak valid';
                    //         }
                    //       }
                    //       return null;
                    //     }),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: noTelpController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        fillColor: AppColor.white,
                        filled: true,
                        labelStyle: fontTextStyle.copyWith(
                            color: const Color(0xff878E97)),
                        hintStyle: fontTextStyle.copyWith(
                            color: const Color(0xff878E97)),
                        hintText: "No Telepon",
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(color: Color(0xFFE8EDF1)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                      onChanged: (value) {
                        // String phoneNull = "${_users?.phone}";
                        // if (_users?.phone != value) {
                        //   setState(() {
                        //     btnUpdateProfile = true;
                        //   });
                        // } else if ("${_users?.phone}" == phoneNull){
                        //   setState(() {
                        //     btnUpdateProfile = false;
                        //   });
                        // }
                      },
                    ),
                    const SizedBox(height: 16),
                    // TextFormField(
                    //   controller: passwordController,
                    //   autovalidateMode: AutovalidateMode.onUserInteraction,
                    //   obscureText: _passwordVisible,
                    //   onChanged: (value) {
                    //     setState(() {
                    //       passwordMatch = value;
                    //     });
                    //   },
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'kata sandi harus di isi';
                    //     }
                    //     return null;
                    //   },
                    //   maxLines: 1,
                    //   decoration: InputDecoration(
                    //       fillColor: AppColor.white,
                    //       filled: true,
                    //       labelStyle: fontTextStyle.copyWith(
                    //           color: const Color(0xff878E97)),
                    //       hintStyle: fontTextStyle.copyWith(
                    //           color: const Color(0xff878E97)),
                    //       hintText: "Kata Sandi",
                    //       contentPadding: const EdgeInsets.symmetric(
                    //           horizontal: 16, vertical: 12),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(16),
                    //         borderSide: const BorderSide(color: Color(0xFFE8EDF1)),
                    //       ),
                    //       enabledBorder: const OutlineInputBorder(
                    //           borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                    //           borderRadius: BorderRadius.all(Radius.circular(16))),
                    //       focusedBorder: const OutlineInputBorder(
                    //         borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                    //         borderRadius: BorderRadius.all(Radius.circular(16)),
                    //       ),
                    //       suffixIconColor: const Color(0xff324256),
                    //       suffixIcon: IconButton(
                    //           icon: Icon(_passwordVisible
                    //               ? Icons.visibility_off
                    //               : Icons.visibility),
                    //           onPressed: () {
                    //             setState(() {
                    //               _passwordVisible = !_passwordVisible;
                    //             });
                    //           })),
                    // ),
                    // const SizedBox(height: 16),
                    // TextFormField(
                    //   controller: confirmPasswordController,
                    //   autovalidateMode: AutovalidateMode.onUserInteraction,
                    //   obscureText: _passwordConfirmVisible,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Konfirmasi Kata Sandi harus di isi';
                    //     }
                    //     if (value != passwordMatch) {
                    //       return 'Kedua kata sandi harus sama';
                    //     }
                    //     return null;
                    //   },
                    //   maxLines: 1,
                    //   decoration: InputDecoration(
                    //     fillColor: AppColor.white,
                    //     filled: true,
                    //     labelStyle:
                    //     fontTextStyle.copyWith(color: const Color(0xff878E97)),
                    //     hintStyle:
                    //     fontTextStyle.copyWith(color: const Color(0xff878E97)),
                    //     hintText: "Konfirmasi Kata Sandi",
                    //     contentPadding: const EdgeInsets.symmetric(
                    //         horizontal: 16, vertical: 12),
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(16),
                    //       borderSide: const BorderSide(color: Color(0xFFE8EDF1)),
                    //     ),
                    //     enabledBorder: const OutlineInputBorder(
                    //         borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                    //         borderRadius: BorderRadius.all(Radius.circular(16))),
                    //     focusedBorder: const OutlineInputBorder(
                    //       borderSide: BorderSide(color: Color(0xFFE8EDF1)),
                    //       borderRadius: BorderRadius.all(Radius.circular(16)),
                    //     ),
                    //     suffixIconColor: const Color(0xff324256),
                    //     suffixIcon: IconButton(
                    //       icon: Icon(_passwordConfirmVisible
                    //           ? Icons.visibility_off
                    //           : Icons.visibility),
                    //       onPressed: () {
                    //         setState(() {
                    //           _passwordConfirmVisible = !_passwordConfirmVisible;
                    //         });
                    //       },
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   margin: const EdgeInsets.only(top: 18, bottom: 30),
                    //   height: 40,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: AppColor.colorPrimaryBlue,
                    //     borderRadius: BorderRadius.circular(40),
                    //   ),
                    //   child: TextButton(
                    //       onPressed: () {
                    //         if (isLoading == false && _formKey.currentState!.validate()){
                    //           setState(() {
                    //             isLoading = true;
                    //           });
                    //           editProfile();
                    //         }
                    //       },
                    //       child: isLoading ? const Center(child: CircularProgressIndicator(color: AppColor.white)) :Text(
                    //         "Daftar Sekarang",
                    //         style: fontTextStyle.copyWith(
                    //           fontWeight: FontWeight.w600,
                    //           color: AppColor.white,
                    //           fontSize: 16,
                    //         ),
                    //       )),
                    // ),

                    // Container(
                    //   width: double.infinity,
                    //   height: 40,
                    //   decoration: BoxDecoration(
                    //       color: btnUpdateProfile ? AppColor.colorPrimaryGreen
                    //           : Colors.grey,
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: btnUpdateProfile ? TextButton(
                    //     onPressed: () {
                    //       // if (isLoading == false) {
                    //       //   // showLoadingDialog(context);
                    //       //   setState(() {
                    //       //     isLoading = true;
                    //       //   });
                    //       //   editProfile();
                    //       // }
                    //     },
                    //     child: Text("Simpan",
                    //         style: fontTextStyle.copyWith(
                    //           fontWeight: FontWeight.w700,
                    //           color: AppColor.white,
                    //         )),
                    //   )
                    //       : TextButton(
                    //     onPressed: () {},
                    //     child: Text("Simpan",
                    //         style: fontTextStyle.copyWith(
                    //           fontWeight: FontWeight.w700,
                    //           color: AppColor.white,
                    //         )),
                    //   ),
                    // ),


                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.colorPrimaryGreen,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Simpan",
                            style: fontTextStyle.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColor.white,
                            )),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Users? _users;
  // getUserProfile() async {
  //   String? token = await Session().getUserToken();
  //
  //   if (token != null) {
  //     AuthViewmodel().userDetail().then((value) {
  //       if (value.code == 200) {
  //         setState(() {
  //           _users = Users.fromJson(value.data);
  //           namaController.text = _users?.name;
  //           noTelpController.text = _users?.phone;
  //         });
  //       }
  //     });
  //   }
  // }

  // editProfile() async {
  //   AuthViewmodel().editProfile(name: namaController.text, phone: noTelpController.text).then((value) {
  //     if (value.code == 200){
  //       setState(() {
  //         isLoading = false;
  //       });
  //       Navigator.of(context).pushAndRemoveUntil(
  //           MaterialPageRoute(builder: (_) => const BasePage()),
  //               (Route<dynamic> route) => false);
  //     } else {
  //       setState(() {
  //         isLoading = false;
  //       });
  //       showToast(context: context, msg: value.message);
  //     }
  //   });
  // }
}