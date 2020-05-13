Repository to the medium.com article: https://medium.com/@trn84/creating-a-cross-compilation-like-process-for-jetson-tx2-aarch64-using-qemu-with-docker-5cb38f6a65bc
---------------

# Creating a Cross-Compilation like process for Jetson TX2 (aarch64) using QEMU with Docker
### Easily build your applications in your CI/CD on x86 without needing an aarch64 build-farm

## Background

Embedded devices are largely popular for many reasons, like low power consumption, good performance, and competitive prices. Most systems make use of the ARM architecture. One such system is the Jetson TX2 from NVIDIA that is in focus of this guide. This System-on-Module offers many advantages, especially in the context of computer vision and AI.

Although, the performance is quite high, building on the device itself and deployment of software can be quite time consuming. Additionally, since this device is in aarch64 architecture one has to use a cross-compilation tool-chain to realize this in terms of CI/CD. NVIDIA offers some tools directly integrated in their Nsight Eclipse environment which basically has a CMake tool-chain file for cross-compilation and takes care of the dependencies when using that IDE.

This guide shall offer a more flexible approach to cross-compilation by using docker together with QEMU for a build environment that is exactly like the target system itself without wondering about all the correct dependencies, rootfs, paths, libraries, etc.

Finally, we can use this approach to fully integrate this process into a Gitlab CI runner pipeline thanks to the encapsulated nature of docker.

We will start with a step-by-step guide to achieve a cross-compiled CUDA sample from an x86 system onto a Jetson TX2 Development Board.


