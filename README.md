Qt Udev
=======

[![License](https://img.shields.io/badge/license-LGPLv3.0-blue.svg)](http://www.gnu.org/licenses/lgpl.txt)
[![GitHub release](https://img.shields.io/github/release/lirios/qtudev.svg)](https://github.com/lirios/qtudev)
[![Build Status](https://travis-ci.org/lirios/qtudev.svg?branch=master)](https://travis-ci.org/lirios/qtudev)
[![GitHub issues](https://img.shields.io/github/issues/lirios/qtudev.svg)](https://github.com/lirios/qtudev/issues)

Qt-style API to use udev.

## Dependencies

Qt >= 5.8.0 with at least the following modules is required:

 * [qtbase](http://code.qt.io/cgit/qt/qtbase.git)

And the following modules:

 * [cmake](https://gitlab.kitware.com/cmake/cmake) >= 3.10.0
 * [cmake-shared](https://github.com/lirios/cmake-shared.git) >= 1.0.0

The following modules and their dependencies are required:

 * [udev](http://www.freedesktop.org/software/systemd/libudev/)

For autotests you need:

 * [umockdev](https://github.com/martinpitt/umockdev/)

## Installation

```sh
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/path/to/prefix ..
make
make install # use sudo if necessary
```

Replace `/path/to/prefix` to your installation prefix.
Default is `/usr/local`.

### Logging categories

Qt 5.2 introduced logging categories and Liri takes advantage of
them to make debugging easier.

Please refer to the [Qt](http://doc.qt.io/qt-5/qloggingcategory.html) documentation
to learn how to enable them.

### Available categories

* **qtudev:** udev integration

## Licensing

Licensed under the terms of the GNU Lesser General Public License version 3 or,
at your option, any later version.
