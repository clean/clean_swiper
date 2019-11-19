# clean_swiper

Clean Swiper is a starting point for clean and simple swiper. 
Whenever you just need to swipe multiply elements and you don't need any
fancy features clean_swiper is here for you.

![Clean Swiper Exmaple](https://raw.githubusercontent.com/clean/clean_swiper/master/doc/showcase.gif)

## Installing

Include `clean_swiper` in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  clean_swiper: <latest_version>
```

If your IDE doesn't do it automatically, type:

`flutter packages get`


## Using

```dart
import 'package:clean_swiper/clean_swiper.dart';

Container(
  height: 250,
  child: CleanSwiper(
    viewportFraction: 0.9,
    initialPage: 0,
    children: <Widget>[
      Card(
        color: Colors.yellow,
        child: Center(child: Text('Card 1'))
      ),
      Card(
        color: Colors.pink,
        child: Center(child: Text('Card 2'))
      ),
      Card(
        color: Colors.teal,
        child: Center(child: Text('Card 3'))
      ),
    ]
  ),
)
...
```