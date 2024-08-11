#!/usr/bin/env bash
cd tools

ESP_IDF_VERSION="4.4.8"
MATTER_VERSION="181b0cb"
ESP_MATTER_VERSION="48751df"
ARDUINO_ESP32_VERSION="2.0.17"

GIT_SSL_NO_VERIFY=true git clone --recursive https://github.com/espressif/esp-idf
git -C esp-idf checkout $ESP_IDF_VERSION
git -C esp-idf submodule update --init --recursive

GIT_SSL_NO_VERIFY=true git clone --recursive https://github.com/espressif/esp-matter
git -C esp-matter checkout $ESP_MATTER_VERSION
git -C esp-matter submodule update --init --recursive

git -C esp-matter/connectedhomeip/connectedhomeip checkout $MATTER_VERSION

GIT_SSL_NO_VERIFY=true git clone https://github.com/espressif/arduino-esp32
git -C arduino-esp32 checkout $ARDUINO_ESP32_VERSION
git -C arduino-esp32 submodule update --init --recursive