<img align="right" src="https://github.com/Minh-Ton/HTML-Screensaver/raw/master/HTMLScreensaver/HTMLScreensaver/UI/thumbnail%402x.png">

# HTML Screensaver [WIP]

With some basic HTML code, you can create your own macOS Screensaver!

## Requirements

- OS X 10.11 El Capitan or newer.
- A simple HTML Editor (such as TextEdit).
- HTML knowledge [(Learn HTML here)](https://www.w3schools.com/html)

## Some ideas to make your Screensaver

- Images Slideshow
- Playing YouTube Videos
- Stream Music (No one does this on a screensaver)
- Displaying your Notes

## Sample Screensaver

- I've already created a sample Screensaver from a HTML file, which embed a YouTube video and play it automatically.

- I packaged that HTML file into a Screensaver (I will create a small applet later to carry this job)

- This is the HTML that I used:

``` html
<!doctype html>
<html lang="en">
    <body>
        <div align = "center">
            <iframe width="1280" height="800" src="https://www.youtube.com/embed/VMCL29PmBvg?vq=hd720&autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </body>
</html>

```
- The result: It just works! Playing YouTube video and interact with the screensaver directly to pause, play, skip,...!

<p align="center">
 <img src="https://github.com/Minh-Ton/HTML-Screensaver/raw/master/HTMLScreensaverScreenshots/HTMLScreensaverRecord.gif">
</p>

## Credits

- Thanks to [burnsra](https://github.com/burnsra)'s [ScreenSaverTemplate](https://github.com/burnsra/ScreenSaverTemplate) which I used to create the Screensaver.

## License

- This project is licensed under the MIT License. See LICENSE.md for more detail. 
