import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/navigation/navbar.dart';
import '../../components/navigation/footer.dart';

class PageLayout extends StatelessComponent {
  final List<Component> children;

  const PageLayout({required this.children});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'flex flex-col min-h-screen',
      [
        const Navbar(),
        div(classes: 'flex-grow flex flex-col', attributes: {'role': 'main'}, children),
        const Footer(),
      ],
    );
  }
}
