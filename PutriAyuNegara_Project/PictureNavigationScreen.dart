class PictureNavigationScreen extends StatefulWidget {
  @override
  _PictureNavigationScreenState createState() =>
      _PictureNavigationScreenState();
}

class _PictureNavigationScreenState extends State<PictureNavigationScreen> {
  // List of image paths
  final List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
    'assets/image10.jpg',
  ];

  // Current index of displayed image
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture Navigation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display the current image
          Image.asset(
            images[currentIndex],
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Button to go to the first image
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Text('First'),
              ),
              SizedBox(width: 10),
              // Button to go to the next image
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = (currentIndex + 1) % images.length;
                  });
                },
                child: Text('Next'),
              ),
              SizedBox(width: 10),
              // Button to go to the previous image
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex =
                        (currentIndex - 1 + images.length) % images.length;
                  });
                },
                child: Text('Previous'),
              ),
              SizedBox(width: 10),
              // Button to go to the last image
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = images.length - 1;
                  });
                },
                child: Text('Last'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
