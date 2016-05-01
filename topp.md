---
title: Topplistan iTunes
permalink: /topp/
---

# Topplistan iTunes

<p><span id="podcast-name">Spelkosmos</span> ligger på plats <span id="placement"></span> i kategorin Spel & hobbies.</p>

<script>
  var podcastName = document.getElementById('podcast-name').textContent;

  var processTopPodcasts = function (toplist) {
    toplist.feed.entry.forEach(function (entry, index, entries) {
      if (entry['im:name'].label == podcastName) {
        document.getElementById('placement').textContent = index + 1;
      }
    });
  };
</script>
<script src="https://itunes.apple.com/se/rss/toppodcasts/limit=200/genre=1323/explicit=true/json?callback=processTopPodcasts"></script>
