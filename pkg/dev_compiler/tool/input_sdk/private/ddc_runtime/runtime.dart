// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dart._runtime;

import 'dart:async';
import 'dart:collection';

import 'dart:_foreign_helper' show JS, JSExportName, rest, spread;
import 'dart:_interceptors' show JSArray;
import 'dart:_js_helper'
    show
        AssertionErrorWithMessage,
        BooleanConversionAssertionError,
        CastErrorImplementation,
        getTraceFromException,
        Primitives,
        TypeErrorImplementation,
        StrongModeCastError,
        StrongModeErrorImplementation,
        StrongModeTypeError,
        SyncIterable;

part 'classes.dart';
part 'rtti.dart';
part 'types.dart';
part 'errors.dart';
part 'generators.dart';
part 'operations.dart';
part 'utils.dart';

@JSExportName('global')
final global_ = JS('', 'typeof window == "undefined" ? global : window');
final JsSymbol = JS('', 'Symbol');
