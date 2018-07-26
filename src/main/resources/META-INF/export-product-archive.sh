#!/bin/sh

SCRIPT_LOCATION=$(cd "$(dirname "$0")"; pwd)

ARCHIVE_LOCATION=$1
PRODUCT_PATH=$2
PRODUCT_NAME=$3
TARGET_PATH=$4
PRODUCT_TARGET_PATH=$5

cd $ARCHIVE_LOCATION/$PRODUCT_PATH
zip -r $PRODUCT_NAME.zip $PRODUCT_NAME
cp $PRODUCT_NAME.zip $PRODUCT_TARGET_PATH.zip

cd $TARGET_PATH
unzip $PRODUCT_TARGET_PATH.zip