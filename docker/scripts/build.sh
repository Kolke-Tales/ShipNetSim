#!/bin/bash
# Build ShipNetSim from local clone (current working directory)
#echo "🔨 Building ShipNetSim from local directory..."

#docker build  -t shipnetsim:sayan .

#echo "✅ Build complete!"
# ------------------------------------------------------------------------- #

# Build ShipNetSim using Buildx for multiplatform
echo "🔨 Building ShipNetSim multi-platform image using Buildx..."

docker buildx build \
  --platform linux/arm64 \
  -t shipnetsim:sayan_arm64 \
  --load .

echo "✅ Multi-arch build complete!"