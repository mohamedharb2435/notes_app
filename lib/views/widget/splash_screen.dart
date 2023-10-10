import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/models/pageview_model.dart';
import 'package:notes/views/notes_view.dart';
import 'package:notes/views/widget/category_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int x = 0;
  final controller = PageController();

  final List<PageViewModel> info = const [
    PageViewModel(
        image:'assets/images/welcome_notes.png',
        subtitle:
        'Organize Your Thoughts and One Note at a Time: Welcome to Notes App',
        text: 'Welcome to NotesApp'),
    PageViewModel(
        image:'assets/images/add_notes.png',
        subtitle:
        'Capture Ideas Instantly: Adding Notes Made Effortless!',
        text: 'Add Notes'),
    PageViewModel(
        image: 'assets/images/delete_notes.png',
        subtitle:
        'Declutter with a Click: Deleting Notes and Simplifying Your Space!',
        text: 'Delete Notes '),
    PageViewModel(
        image: 'assets/images/update_notes.png',
        subtitle:
        'Revise and Refresh andReimagine: Updating Notes for a Better Tomorrow!',
        text: 'Update Notes'),
    PageViewModel(
        image: 'assets/images/search_notes.png',
        subtitle:
        'Find Your Thoughts in a Flash:Searching Notes and Unleashing Creativity',
        text: 'Search Notes'),
  ];
  int ck = 0;
  void getChanges(int value) {
    setState(() {
      if (value == info.length - 1) {
        ck = 1;
      } else
        ck = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(elevation: 0, backgroundColor: Colors.transparent, actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return  const  NotesView()  ;
              },
            ));
          },
          child: Text(
            'Skip',
            style:
            TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20),
          ),
        )
      ]),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 530,
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: getChanges,
                  controller: controller,
                  itemCount: info.length,
                  itemBuilder: (context, index) {
                    return CategoryPageView(pageViewModel: info[index],);
                  },
                )),

            SmoothPageIndicator(
              controller: controller,
              count: info.length,
              axisDirection: Axis.horizontal,
              effect: WormEffect(
                  spacing: 3.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.orange),
            ),

          ],
        ),
      ),
      floatingActionButton: Padding(

        padding: const EdgeInsets.only(bottom: 50, right: 137),
        child: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {
            if (ck == 0) {
              controller.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.linear);
            } else {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                builder: (context) {
                  return NotesView() ;

                },
              ), (route) => false);
            }
            // SizedBox(height: 50 ,);
          },
          child: Icon(Icons.arrow_forward_ios),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}



