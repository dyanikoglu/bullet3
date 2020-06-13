# Custom Bullet Physics SDK for Source SDK 2013

This is a custom version of Bullet Physics SDK, customized to work as Source SDK 2013's physics engine as replacement to Ipion Physics (vphysics)

## About Source SDK 2013 Integration

- This repository is used as a dependency in Source SDK 2013 physics engine integration maintanined by me, and hosted at https://github.com/dyanikoglu/source-sdk-bullet-physics

- If you have any questions about Source SDK 2013 integration, you can open an issue in the repository linked above to reach out to me.

## Requirements

- MSVC 2013+
- Any recent version of cmake
- TBB (Third party dependency for task scheduling & multithreading support)

## License

License consists of the license file provided within this repository for the base source code, and the below for the additional work being done for the Source SDK 2013 compatibility:

```
MIT License

Copyright (c) 2020 Doğa Can YANIKOĞLU

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Build instructions

- Currently, only Windows is supported as host & client platform for builds.
- Run build.bat batch file to generate optimized project files for Debug/Release Source SDK 2013 builds
