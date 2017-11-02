saveVideoToGallery = function (localVideoPath, successCallback, failureCallback) {
    if (typeof successCallback != 'function') {
        throw new Error('SaveVideo Error: successCallback is not a function');
    }

    if (typeof failureCallback != 'function') {
        throw new Error('SaveVideo Error: failureCallback is not a function');
    }

    return cordova.exec(
        successCallback, failureCallback, 'SaveVideo', 'saveVideoToGallery', [_getLocalVideoPathWithoutPrefix()]);

    function _getLocalVideoPathWithoutPrefix() {
        if (localVideoPath.indexOf('file:///') === 0) {
            return localVideoPath.substring(7);
        }
        return localVideoPath;
    }
};

module.exports = saveVideoToGallery;
