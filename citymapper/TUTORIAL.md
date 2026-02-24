# How to Get OSM Data for the Railway Overlay Mod

The easiest way to get precise, up-to-date railway data for your city is using **Overpass Turbo**.

## Step 1: Go to Overpass Turbo

1. Open [http://overpass-turbo.eu/](http://overpass-turbo.eu/) in your web browser.

## Step 2: Navigate to Your City

1. Use the search box on the map or drag the map to your desired city.
2. **Zoom in** to cover the area you want data for. The query uses the current map view (bounding box).
3. If you want a huge area, be careful! Large files (>20MB) might lag the game.

## Step 3: Use the Query

Copy and paste this code into the left editor panel:

```
[out:json][timeout:120][bbox:{{bbox}}];
(
  // Railway tracks
  way[railway~"^(subway|rail|light_rail|tram|monorail)$"];
  way[railway=rail][service~"^(siding|yard|spur|crossover)$"];
  
  // Platforms (only rail/tram/subway)
  way[railway=platform];
  way[public_transport=platform][train=yes];
  way[public_transport=platform][subway=yes];
  way[public_transport=platform][light_rail=yes];
  way[public_transport=platform][tram=yes];
  
  // Stations & stops
  node[railway~"^(station|halt|stop|subway_entrance|tram_stop)$"];
);
out body;
>;
out skel qt;
```

## Step 4: Run and Export

1. Click the **Run** button at the top left.
2. Wait for the data to load. You'll see the railways appear on the map.
3. Click **Export** in the top toolbar.
4. Under the "Data" section, choose **raw data** (GeoJSON is NOT recommended for this specific query type, choose **raw OSM data** if available, or just standard JSON output).
5. **Actually, the mod supports the JSON format directly.** Click **"download"** next to "raw data" (it usually saves as `export.json`).

## Step 5: Import into the Mod

1. In the game, click the **Train icon** to open the mod panel.
2. Click **"Upload File"**.
3. Select the `.json` file you just downloaded.
4. The railways should appear instantly!
