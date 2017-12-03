# Free Mapbox GL Fonts [![Code is public domain](https://img.shields.io/badge/license-Public%20Domain-blue.svg)](http://choosealicense.com/licenses/unlicense/)

> :warning: **Please migrate to [orangemug/font-glyphs](http://github.com/orangemug/font-glyphs/)**. This repository is no longer maintained by Lukas Martinelli.


[Configuring fonts in Mapbox GL](https://www.mapbox.com/mapbox-gl-style-spec/#glyphs) without using the Mapbox API is a pain and struggle. No one should need to know how the fonts are packaged in order to use Mapbox GL without Mapbox. This project packages the most common free fonts with [fontnik](https://github.com/mapbox/fontnik) so you don't have to worry about [SDL](https://www.mapbox.com/blog/text-signed-distance-fields/) and [gzipped PBFs](https://github.com/mapbox/mapbox-gl-js/issues/830).

## Configure Mapbox GL Style JSON

Your current Mapbox GL Style JSON configuration for `glyphs` will look like this.

```javascript
"glyphs": "mapbox://fonts/morgenkaffee/{fontstack}/{range}.pbf",
```

In order to use the fonts without a Mapbox API key edit your Mapbox GL Style JSON and change the endpoint for `glyphs` to `http://glfonts.lukasmartinelli.ch/fonts/{fontstack}/{range}.pbf`.

```javascript
"glyphs": "http://glfonts.lukasmartinelli.ch/fonts/{fontstack}/{range}.pbf",
```

## Supported Fonts

The following fonts that are available in Mapbox Studio are supported.

*   Open Sans13Selected
*   Open Sans Regular
*   Open Sans Semibold
*   Open Sans Bold
*   Open Sans Extrabold
*   Open Sans Light
*   Open Sans Condensed Bold
*   Open Sans Italic
*   Open Sans Semibold Italic
*   Open Sans Condensed Light
*   Open Sans Bold Italic
*   Open Sans Extrabold Italic
*   Open Sans Light Italic
*   Open Sans Condensed Light Italic
*   PT Sans
*   Roboto

## Package the Fonts

Install [genfontgl](https://github.com/sabas/genfontgl).

```
npm install genfontgl
```

Generate fonts.

```
./generate_fonts.sh
```

## Font License

Please mind the license of the original fonts.
All fonts are either licensed under OFL or Apache.
