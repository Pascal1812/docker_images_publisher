#!/bin/bash

USER="pasdev"

IMAGES=(
  crud_master-api-gateway:latest
  crud_master-inventory-app:latest
  crud_master-billing-app:latest
  crud_master-billing-database:latest
  crud_master-inventory-database:latest
)

for IMAGE in "${IMAGES[@]}"
do
  TARGET_IMAGE="$USER/${IMAGE}"
  echo "Tagging $IMAGE as $TARGET_IMAGE"
  docker tag "$IMAGE" "$TARGET_IMAGE"
  echo "Pushing $TARGET_IMAGE"
  docker push "$TARGET_IMAGE"
done
