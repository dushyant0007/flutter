// Every Dart file (plus its parts) is a library,
// Libraries can be distributed using packages.

// For built-in libraries, the URI has the special dart: scheme.
import 'dart:html';

// --------------------------

// For other libraries, you can use a file system path or the package: scheme. 
// The package: scheme specifies libraries provided by a package manager such as the pub tool. For example:
import 'package:test/test.dart';
// or 
import '../a_basics' as ab;

// --------------------------


// Import only foo.
import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;

// -------------------------

// Deferred loading (also called lazy loading) allows a web app to load a library on demand
// To lazily load a library, first import it using deferred as.

import 'package:greetings/hello.dart' deferred as hello;
// When you need the library, invoke hello.loadLibrary() using the library's identifier.