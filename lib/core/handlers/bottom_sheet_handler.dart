// import 'package:flutter/material.dart';
// import 'package:my_agent/core/utils/__utils.dart';

// class BottomSheetHandler {
//   static void baseDialog(
//     BuildContext context,
//     Widget child, {
//     String? headingText,
//     Widget? heading,
//     TextStyle? headingStyle,
//     double? topLeft,
//     double? topRight,
//     bool showTrailing = false,
//     bool showHandle = true,
//     double? minHeight,
//   }) async {
//     await showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.white,
//       elevation: 2,
//       isScrollControlled: true,
//       useRootNavigator: true,
//       shape: RoundedRectangleBorder(
//         side: BorderSide(
//           width: 1,
//           color: AppColors.grey2,
//         ),
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(topLeft ?? 40),
//         ),
//       ),
//       builder: (context) {
//         return DraggableScrollableSheet(
//           expand: false,
//           initialChildSize: 0.85,
//           minChildSize: 0.85,
//           maxChildSize: 0.85,
//           builder: (context, scrollController) {
//             return SingleChildScrollView(
//               controller: scrollController,
//               child: Container(
//                 width: double.infinity,
//                 constraints: BoxConstraints(
//                   minHeight: minHeight ?? context.getHeight(.85),
//                   minWidth: context.getWidth(),
//                 ),
//                 decoration: BoxDecoration(
//                   color: AppColors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(topLeft ?? 40),
//                     topRight: Radius.circular(topRight ?? 40),
//                   ),
//                   border: Border.all(
//                     color: AppColors.grey2,
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     if (showHandle) ...[
//                       VerticalSpace(value: 12),
//                       Container(
//                         height: 5,
//                         width: 56,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(3),
//                           color: Color(0xffF0F1F5),
//                         ),
//                       ),
//                       VerticalSpace(value: 18),
//                       if (heading != null) ...[heading] else
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 16),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Icon(
//                                 Icons.keyboard_backspace,
//                                 color: AppColors.black,
//                               ).onPop(context),
//                               Text(
//                                 headingText ?? "",
//                                 style: headingStyle ?? AppStyles.poppins16SmBd,
//                               ),
//                               if (showTrailing) ...[
//                                 Icon(
//                                   Icons.close,
//                                   color: AppColors.black,
//                                 ).onPop(context),
//                               ] else ...[
//                                 SizedBox(
//                                   width: 24,
//                                 )
//                               ]
//                             ],
//                           ),
//                         ),
//                       VerticalSpace(value: 16),
//                       AppDivider(),
//                       VerticalSpace(value: 16),
//                     ],
//                     child,
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
