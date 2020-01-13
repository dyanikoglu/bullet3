# Custom Bullet Physics SDK for Source SDK 2013

This is custom version of Bullet Physics SDK, customized to work as Source SDK's physics engine as replacement to ipion physics (vphysics)

## About Source SDK 2013 Integration

- This repository is used as a dependency in my own implementation based on https://github.com/DrChat/Gmod-vphysics (It's a private repository, becasue of being developed under NDA). GMod vphysics repository is currently outdated, and it's based on a Bullet SDK release before version 2.83. If you're willing to give my repository a try, you can replace the bullet source in gmod vphysics with this one, but I don't guarantee it's going to work without any problem. Bullet SDK got a multithreading rewrite with 2.83 release, and it broke mostly everything about multithreading on gmod-vphysics. You need to replace those classes with new multithreaded classes in Bullet SDK, but this also needs lots of additional changes on `Physics_Environment.cpp`. If you have any questions about Source SDK 2013 integration, you can open an issue in this repository to reach out to me.

## Requirements

- MSVC 2013
- Any recent version of cmake
- TBB (Third party dependency)

## Coding Style information

https://docs.google.com/document/d/1u9vyzPtrVoVhYqQOGNWUgjRbfwfCdIts_NzmvgiJ144/edit

## License

License file is provided within this repository.

## Build instructions

**Windows**

- Run build.bat batch file to generate optimized project files for Debug/Release Source SDK 2013 builds
