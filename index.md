---
---

# Spelkosmos

Det här är en peppig podcast om spel. Upplev nya och gamla spelvärldar och magiska berättelser tillsammans med [Sanna][4] och [Sven][5]. Vi tipsar, klurar och snackar om spel varannan onsdag. [Läs mer om oss][1].

<p class="highlight" markdown="1">Prenumerera på podden [via Itunes][2], eller mata in [RSS:en][3] i din podcast-app.</p>

## Alla episoder

<table id="all-episodes">
  {% for post in site.posts %}
    <tr>
    <td>{{ post.episode }}.</td>
      <td>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </td>
      <td>
        {% include pretty-duration.liquid duration=post.duration %}&nbsp;<time datetime="{{ post.date | date: '%Y-%m-%d' }}">{% include localized-date.liquid date=post.date %}</time>
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
[3]: http://spelkosmos.se/itunes.rss
[4]: http://sannalund.se/
[5]: https://svendahlstrand.se/
