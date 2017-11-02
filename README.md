# Cordova-Plugin-Save-Video (IOS only)

This plugin allows you to save local Video file to the iOS Camera Roll.
The video file to be saved to the Library/Gallery must be available on the device.

The plugin is based on code seen in several other existing plugins:

1. [SaveVideo](https://github.com/quiply/SaveVideo) By (quiply)[https://github.com/quiply]
1. [Canvas2VideoPlugin](https://github.com/devgeeks/Canvas2VideoPlugin) by [Tommy-Carlos Williams](https://github.com/devgeeks)
1. [ImgDownloader](https://github.com/Nomia/ImgDownloader) by [Nomia](https://github.com/Nomia)
1. [cordova-camera-roll](https://github.com/driftyco/cordova-camera-roll) by [Max Lynch](https://github.com/mlynch)

Thanks to all of the above mentioned authors for sharing their code openly.

```Bash
cordova plugin add https://github.com/anasfullstack/cordova-plugin-save-video
```

## Methods

- cordova.plugins.saveVideoToGallery

## Properties

none

## API reference

### saveVideoToGallery

Save a local video to the device gallery.

```Javascript
window.cordova.plugins.saveVideoToGallery(nativePathToVideo, successCallback, errorCallback);
```

## Supported Platforms

- iOS

## Usage Example

Call the `window.cordova.plugins.saveVideoToGallery()` method passing 3 parameters:

1. The native video path for the video to be saved
1. success callback
1. error callback

### Example

```Javascript

// iOS with file prefix: var nativePathToVideo = 'file:///var/mobile/Containers/Data/Application/<UUID>/Library/NoCloud/some_dir/some_video.mp4'
// iOS without file prefix: var nativePathToVideo = '/var/mobile/Containers/Data/Application/<UUID>/Library/NoCloud/some_dir/some_video.mp4'

window.cordova.plugins.saveVideoToGallery(nativePathToVideo, onSaveVideoSuccess, onSaveVideoError);

function onSaveVideoSuccess() {
    console.log('--------------success');
}

function onSaveVideoError(error) {
    console.log('--------------error: ' + error);
}
```
