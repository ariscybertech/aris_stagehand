// Copyright (c) 2014, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../stagehand.dart';
import '../src/common.dart';
import 'web_polymer_data.dart';

/**
 * A generator for a polymer.dart application.
 */
class WebPolymerGenerator extends DefaultGenerator {
  WebPolymerGenerator()
      : super('web-polymer', 'Polymer Web Application',
            'A web app built using polymer.dart.',
            categories: const ['dart', 'web']) {
    for (TemplateFile file in decodeConcatenatedData(data)) {
      addTemplateFile(file);
    }

    setEntrypoint(getFile('web/index.html'));
  }

  String getInstallInstructions() => "${super.getInstallInstructions()}\n"
      "to run your app, use 'pub serve'";
}
