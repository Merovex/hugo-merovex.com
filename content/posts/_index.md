<ul>
    {{ $type := .Type }}
    {{ range $key, $value := .Data.Terms.Alphabetical }}
        {{ $name := .Name }}
        {{ $count := .Count }}
        {{ with $.Site.GetPage (printf "/%s/%s" $type $name) }}
            <li><a href="{{ .Permalink }}">{{ $name }}</a> {{ $count }}</li>
        {{ end }}
    {{ end }}
    {{ range $name,$page := .Site.Taxonomies.categories }}
                <li class="pure-menu-item">
                    <a href="{{ $baseurl }}categories/{{ $name | urlize }}" class="pure-menu-link">{{ $name | title }}</a>
                </li>
                {{ end }}
</ul>
