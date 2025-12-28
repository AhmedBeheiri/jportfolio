import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../sections/hero_section.dart';
import '../sections/tech_stack_section.dart';
import '../sections/work_section.dart';
import '../sections/about_section.dart';
import '../sections/cta_section.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'home-container', 
      [
        const HeroSection(),
        const TechStackSection(),
        const WorkSection(),
        const AboutSection(),
        const CTASection(),
      ]
    );
  }
}
