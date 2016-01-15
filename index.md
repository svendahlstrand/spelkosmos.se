---
---

# Välkommen till Spelkosmos

Upplev nya och gamla spelvärldar och magiska berättelser tillsammans med Sanna och Sven. Vi tipsar, klurar och lär oss intressanta grejer om spel och att spela. [Läs mer om oss][1].

[Prenumerera via vår RSS][2]. Vi finns givetvis också [på Itunes][3].

## Alla episoder

<table id="all-episodes">
	{% for post in site.posts %}
	<tr>
		<td>
			{{ post.episode }}. <a href="{{ post.url }}">{{ post.title }}</a>
		</td>
		<td>
			{% include pretty-duration.liquid duration=post.duration %}
			<time>{% include localized-date.liquid date=post.date %}</time>
		</td>
	</tr>
	 {% endfor %}
</table>

<script>
(function () {
	document.body.className += ' js';

	function getParentElementByTagName(element, name) {
		if (element.tagName === name.toUpperCase()) {
			return element;
		}
		else if (element.parentElement !== null) {
			return getParentElementByTagName(element.parentElement, name);
		}

		return null;
	}

	var table = document.getElementById('all-episodes');

	table.addEventListener('click', function (event) {
		var row = getParentElementByTagName(event.target, 'tr');
		var allLinks = row && row.getElementsByTagName('a');

		if (allLinks.length > 0) {
			allLinks[0].click();
		}
	});
}());
</script>

[1]: /om-oss/
[2]: http://spelkosmos.se/itunes.rss
[3]: https://itunes.apple.com/se/podcast/spelkosmos/id1074034373
