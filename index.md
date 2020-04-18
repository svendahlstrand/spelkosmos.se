---
excerpt: Det här är en peppig podcast om tv- och datorspel. Upplev nya och gamla spelvärldar tillsammans med Sanna och Sven. Vi tipsar, klurar och grottar ner oss i fantastiska spelberättelser.
---

# Spelkosmos

Det här är en peppig podcast om tv- och datorspel. Upplev nya och gamla spelvärldar tillsammans med [Sanna][4] och [Sven][5]. Vi tipsar, klurar och grottar ner oss i bra berättelser och spännande spelfenomen. [Läs mer om oss][1].

Du kan prenumerera på podden via [Apple Podcasts][2], [Spotify][8], [Google Podcasts][9] eller mata in [RSS:en][3] i din podcast-app. Just nu har podden paus men förhoppningsvis hörs (eller ses) vi snart igen!

## Alla episoder

<table id="all-episodes">
  {% assign audio_posts = site.posts | where_exp:"post","post.video != true" | reverse %}
  {% for post in audio_posts %}
    <tr>
    <td>{{ post.episode }}.</td>
      <td>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </td>
      <td>
        {% include pretty-duration.liquid duration=post.duration %}
      </td>
    </tr>
  {% endfor %}
</table>

## Bonusepisoder

<table id="video-episodes">
  {% assign video_posts = site.posts | where_exp:"post","post.video == true" | reverse %}
  {% for post in video_posts %}
    <tr>
    <td>{{ post.episode }}.</td>
      <td>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </td>
      <td>
        {% include pretty-duration.liquid duration=post.duration %}
      </td>
    </tr>
  {% endfor %}
</table>

<script>
(function () {
  var browserIsSupported = 'classList' in document.documentElement && 'closest' in document.documentElement && 'querySelector' in document && 'addEventListener' in document;

  if (!browserIsSupported) {
    return;
  }

  document.body.classList.add('js');

  var table = document.querySelector('#all-episodes');

  table.addEventListener('click', function (event) {
    var row = event.target.closest('tr');
    var firstLink = row && row.querySelector('a');

    if (firstLink) {
      firstLink.click();
    }
  });
}());
</script>

[1]: /om-oss/
[2]: https://itunes.apple.com/se/podcast/spelkosmos/id1074034373
[3]: /alla-episoder.rss
[4]: https://sannalund.se/
[5]: https://dahlstrand.net/
[6]: https://www.facebook.com/spelkosmos/
[7]: https://www.instagram.com/spelkosmos/
[8]: https://open.spotify.com/show/1eWqU6UecnLF0B2CXUKmAl?si=spZZj9uHS-elUtqk5zNpLA
[9]: https://podcasts.google.com/?feed=aHR0cHM6Ly9zcGVsa29zbW9zLnNlL2FsbGEtZXBpc29kZXIucnNz&ved=0CAAQ4aUDahcKEwjw36jq8pvnAhUAAAAAHQAAAAAQAQ
