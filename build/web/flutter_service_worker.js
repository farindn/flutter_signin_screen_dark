'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "d8938d9c81a2ee43238a75c4b037128b",
"assets/assets/images/day1/1_logo.png": "be2dea60fc9f8a8fe8caaf97a11de277",
"assets/assets/images/day1/2_bg.png": "1973255eb2b658d091be17e0b9b87a52",
"assets/assets/images/day1/2_logo.png": "42b497794c23180b26e15d7b4eb2055e",
"assets/assets/images/day2/1_bg.png": "c9a38015f28d8cde056b7716e20cfc74",
"assets/assets/images/day2/2_content.png": "8ba73d395fe8466df04060da53ae3ee1",
"assets/assets/images/day3/1_logo.png": "0c622b9a9f03a07895a55f2d35e7a54f",
"assets/assets/images/day3/2_logo.png": "70b3eda7c7f96106cbe764ac4ff64b5d",
"assets/assets/images/day4/1_ilustration.png": "f8b305eb593cc8140e46283205ba7c36",
"assets/assets/images/day4/2_bg.png": "e18129882b2ee28dbf6cb40922d4b543",
"assets/assets/images/day4/2_icon.png": "5a5056ce9a97419f4b510838ce15de7f",
"assets/assets/images/day4/2_ilustration.png": "e1ea662d4f7069d24ee74bb46ae5e785",
"assets/assets/images/day5/1_logo.png": "9bd147d46796bb6cf8fa76a432e992ff",
"assets/assets/images/day5/1_pic_angry.png": "1764c433f30d3dd5e8f94283287047fc",
"assets/assets/images/day5/1_pic_happy.png": "de84592fe65962d3740dd754b5fcf4fe",
"assets/assets/images/day5/1_pic_love.png": "1ec858c4433945df7c3df325d57f7732",
"assets/assets/images/day5/1_pic_sad.png": "03d526be68e0ca06b03238fe3c8f8d52",
"assets/assets/images/day5/2_logo.png": "54c3bed8ba02eed31003ddfd43925cba",
"assets/assets/images/day6/1_icon_automation.png": "71c32579c7838534b631174ef9016293",
"assets/assets/images/day6/1_icon_report.png": "44bd505c152b3ca0c9615f351dc05bf6",
"assets/assets/images/day6/1_icon_security.png": "e766e8ae418fef760051888cba2cabb4",
"assets/assets/images/day6/1_logo.png": "60feff7caa8d35c7310faffc9f97d0fd",
"assets/assets/images/day6/2_bg.png": "c50e973c07bc7d7ff369e81ca3c09af9",
"assets/assets/images/day6/2_logo.png": "01fd563265103ecf65acd4468d6e7e12",
"assets/assets/images/day7/1_pic_burger.png": "02f7fdf04abe7a733a4b9f3af5eeaf1b",
"assets/assets/images/day7/1_pic_mojito.png": "c1700dc5b92b595f57c2a8586e0b45c5",
"assets/assets/images/day7/2_header.png": "322f55638f69966ef17b39d1687eb7a3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/NOTICES": "34277b98569ea7f02d1d2fe973560fe0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "d72d5a8303a071725ad8dd4ba29d2c66",
"/": "d72d5a8303a071725ad8dd4ba29d2c66",
"main.dart.js": "d1e6653c70105971c9f038e19cc312fb",
"manifest.json": "b4f372810327cd5bce23f13ee559310c",
"version.json": "132c07397eeb64af954eeb4259c9142c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
