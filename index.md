---
---

# Välkommen till Spelkosmos

Upplev nya och gamla spelvärldar och magiska berättelser tillsammans med Sanna och Sven. Vi tipsar, klurar och lär oss intressanta grejer om spel och att spela. [Läs mer om oss][1].

[Prenumerera via vår RSS][2]. Vi finns givetvis också [på Itunes][3].

## Alla episoder

<table>
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

[1]: /om-oss/
[2]: http://spelkosmos.se/itunes.rss
[3]: https://itunes.apple.com/se/podcast/spelkosmos/id1074034373
