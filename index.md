---
---

# Välkommen till Spelkosmos

Upplev nya och gamla spelvärldar och magiska berättelser tillsammans med Sanna och Sven. Vi tipsar, klurar och lär oss intressanta grejer om spel och att spela. [Läs mer om oss][1].

## Alla episoder

<table>
	{% for post in site.posts %}
	<tr>
		<td>
			{{ post.episode }}.
		</td>
		<td>
      	<a href="{{ post.url }}">{{ post.title }}</a>
		</td>
		<td>
			30 minuter
		</td>
		<td>
			PLAY
		</td>
	</tr>
	 {% endfor %}
</table>

[1]: /om-oss/