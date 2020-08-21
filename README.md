<!-- PROJECT SHIELDS -->
[![Xcode][xcode-shield]][xcode-url]
[![Swift][swift-shield]][swift-url]
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/peterfriese/JewelCase">
    <img src="assets/logo/JewelCase.png" alt="Logo">
  </a>

  <h3 align="center">JewelCase</h3>

  <p align="center">
    This is the source code for <i>JewelCase</i>, a sample app demonstrating hwo to use SwiftUI and Firebase together.
    <br />
    <a href="https://github.com/peterfriese/JewelCase"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/peterfriese/JewelCase#Demo">View Demo</a>
    ·
    <a href="https://github.com/peterfriese/JewelCase/issues">Report Bug</a>
    ·
    <a href="https://github.com/peterfriese/JewelCase/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  <!-- * [Prerequisites](#prerequisites) -->
  * [Installation](#installation)
<!-- * [Usage](#usage) -->
<!-- * [Roadmap](#roadmap) -->
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project

![Screenshot][product-screenshot]

### Built With

* [SwiftUI](https://developer.apple.com/xcode/swiftui/)
* [Combine](https://developer.apple.com/documentation/combine)
* [Firebase](https://firebase.google.com)

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps.

### Prerequisites

This project uses Cocoapods to manage dependencies.

* If you haven't done so already, install Cocoapods:

  ``` bash
  sudo gem install cocoapods
  ```

### Installation

1. Clone the repo
2. Navigate to the project folder
3. Install dependencies
4. Open the project
5. Register for a developer account at TMDB.org
6. Make a copy of `TMDB-Info-sample.plist`, naming it `TMDB-Info.plist`, and insert your [TMDB API key](https://www.themoviedb.org/settings/api)

``` bash
git clone https://github.com/peterfriese/JewelCase.git
cd JewelCase/code
pod install
xed .
```

<!-- Demo -->
## Demo

![Demo][product-demo]


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a pull request

<!-- LICENSE -->
## License

See [LICENSE](LICENSE)

<!-- Disclaimer -->
## Disclaimer

This is not an official Google product.

<!-- CONTACT -->
## Contact

Peter Friese - [@peterfriese](https://twitter.com/peterfriese)

Project Link: [https://github.com/peterfriese/JewelCase](https://github.com/peterfriese/JewelCase)

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

* The application icon is based on [Clapper](https://thenounproject.com/term/clapper/3233826/) by [shashank singh](https://thenounproject.com/rshashank19/) from the [Noun Project](https://thenounproject.com/)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[xcode-shield]: https://img.shields.io/badge/xcode-v12.0b5-blue
[xcode-url]: https://developer.apple.com/xcode/

[swift-shield]: https://img.shields.io/badge/swift-v5.3-%23fe4b2d
[swift-url]: https://swift.org/

[contributors-shield]: https://img.shields.io/github/contributors/peterfriese/JewelCase.svg?style=flat-square
[contributors-url]: https://github.com/peterfriese/JewelCase/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/peterfriese/JewelCase.svg?style=flat-square
[forks-url]: https://github.com/peterfriese/JewelCase/network/members

[stars-shield]: https://img.shields.io/github/stars/peterfriese/JewelCase.svg?style=flat-square
[stars-url]: https://github.com/peterfriese/JewelCase/stargazers

[issues-shield]: https://img.shields.io/github/issues/peterfriese/JewelCase.svg?style=flat-square
[issues-url]: https://github.com/peterfriese/JewelCase/issues

[license-shield]: https://img.shields.io/github/license/peterfriese/JewelCase.svg?style=flat-square
[license-url]: https://github.com/peterfriese/JewelCase/blob/master/LICENSE

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/peterfriese

[product-demo]: assets/demo.gif
[product-screenshot]: assets/screenshot.png "Screenshot of JewelCase, a sample app demonstrating how to use SwiftUI and Firebase together"
