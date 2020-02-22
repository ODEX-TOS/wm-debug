# WM-DEBUG

> debugging script to make editing window managers easier for tos

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

This repo contains scripts that makes debugging window managers a bit more easy.

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/ODEX-TOS/tos-live">
    <img src="https://tos.pbfp.xyz/images/logo.svg" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">WM-DEBUG</h3>

  <p align="center">
    Easily debug window managers when working on them (Build for TOS)
    <br />
    <a href="https://github.com/ODEX-TOS/tos-live"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ODEX-TOS/tos-live">View Demo</a>
    ·
    <a href="https://github.com/ODEX-TOS/tos-live/issues">Report Bug</a>
    ·
    <a href="https://github.com/ODEX-TOS/tos-live/issues">Request Feature</a>
  </p>
</p>

## Installation

We have a few dependencies. The script will complain if they are not installed. Here is a short list:

- Xephyr
- awesomeWM

To install them use the following

```bash
# Install on arch
pacman -Syu xorg-server-xephyr
pacman -Syu awesome
# or if you are on tos (or have the tos repo's)
pacman -Syu awesome-tos
```

## Usage example

Here is a short and easy list of commands you can use with this script.

Help menu

```bash
./launch.sh -h
# or
./launch.sh --help
```

Set the screen resolution of the window

```bash
./launch -r 1920x1080
./launch --resolution 1920x1080
```

Set the display to use

```
./launch.sh -d :1
./launch.sh --display :1
# or another display
./launch.sh -d :2
./launch.sh --display :2
```

> only use the display setting if your script isn't being launched

_For more examples and usage, please refer to the [Documentation](https://github.com/ODEX-TOS/wm-debug)._

## Release History

- 0.0.1
  - Initial start

## Meta

F0xedb – tom@odex.be

Distributed under the MIT license. See `LICENSE` for more information.

[https://github.com/F0xedb/wm-debug](https://github.com/F0xedb/wm-debug)

## Contributing

1. Fork it (<https://github.com/F0xedb/wm-debug/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->

[contributors-shield]: https://img.shields.io/github/contributors/ODEX-TOS/wm-debug.svg?style=flat-square
[contributors-url]: https://github.com/ODEX-TOS/wm-debug/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ODEX-TOS/wm-debug.svg?style=flat-square
[forks-url]: https://github.com/ODEX-TOS/wm-debug/network/members
[stars-shield]: https://img.shields.io/github/stars/ODEX-TOS/wm-debug.svg?style=flat-square
[stars-url]: https://github.com/ODEX-TOS/wm-debug/stargazers
[issues-shield]: https://img.shields.io/github/issues/ODEX-TOS/wm-debug.svg?style=flat-square
[issues-url]: https://github.com/ODEX-TOS/wm-debug/issues
[license-shield]: https://img.shields.io/github/license/ODEX-TOS/wm-debug.svg?style=flat-square
[license-url]: https://github.com/ODEX-TOS/wm-debug/blob/master/LICENSE.txt
[product-screenshot]: https://tos.odex.be/images/logo.svg
