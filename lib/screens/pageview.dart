// import 'package:flutter/material.dart' ;

// class PageController extends StatefulWidget {
//   const PageController({super.key});

//   @override
//   State<PageController> createState() => _PageControllerState();
// }

// class _PageControllerState extends State<PageController> {
//   @override
// Widget build(BuildContext context) {
// 	return Scaffold(

// 	// Column created
// 	body: Column(
// 		children: [
// 		Expanded(
			
// 			// PageView Builder
// 			child: PageView.builder(
// 				scrollDirection: Axis.horizontal,
// 				onPageChanged: (value){
// 				setState(() {
// 					currentIndex = value;
// 				});
// 				},
// 				itemCount: slides.length,
// 				itemBuilder: (context, index){
				
// 				// Contents of Slider that we
// 				// created in Modal Class
// 				return Slider(
// 					image: slides[index].getImage(),
// 					title: slides[index].getTitle(),
// 					description: slides[index].getDescription(),
// 				);
// 				}
// 			),
// 		),
		
// 		// Container created for dots
// 		Container(
// 			child: Row(
// 			mainAxisAlignment: MainAxisAlignment.center,
// 			children: List.generate(slides.length, (index) => buildDot(index, context),
// 			),
// 			),
// 		),


//     Container(
// 		height: 60,
// 		margin: EdgeInsets.all(40),
// 		width: double.infinity,
// 		color: Colors.green,

// 		// Button
// 		child: FlatButton(
// 			child: Text(
// 				currentIndex == slides.length - 1 ? "Continue": "Next"),
// 			onPressed: (){
// 			if(currentIndex == slides.length - 1){
				
// 				// Navigate to next screen
// 				Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Screen1()),
// 				);
// 			}
// 			_controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
// 			},
// 			textColor: Colors.white,

// 			// Border radius to button
// 			shape: RoundedRectangleBorder(
// 			borderRadius: BorderRadius.circular(25),
// 			),
// 		),

// 		),

//     ],
//   ),
//   );

// }