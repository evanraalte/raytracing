#! /bin/bash

premake5 gmake

make

./bin/Debug/RayTracing > image.ppm
