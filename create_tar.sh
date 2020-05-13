#!/bin/sh

# Mount flash image
echo "1. Mounting flash image..."
sudo mount -o loop backup.img.raw jetson-image-mount/

# Create tar
echo "2. Creating tar archive..."
cd jetson-image-mount/
sudo tar -czvf ../jetson-image.tar.gz *
cd ..

# Move tar into docker build context
echo "3. Move archive into build context..."
mv jetson-image.tar.gz docker-build-context/
