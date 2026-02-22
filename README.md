# audiflow Smart Playlist Schema

JSON Schema and documentation for [audiflow](https://github.com/audiflow) smart playlist configuration.

Smart playlists automatically organize podcast episodes into groups (seasons, categories, years, or story arcs) based on configurable rules.

## Schema

- [`schema.json`](schema.json) -- JSON Schema (draft-07) for the full config format
- [`playlist-definition.schema.json`](playlist-definition.schema.json) -- schema for individual playlist definitions
- [`docs/schema.html`](docs/schema.html) -- browsable HTML documentation
- [`docs/file-structure.md`](docs/file-structure.md) -- config file hierarchy used by data repositories

## Resolver Types

Each playlist uses a resolver to group episodes:

| Resolver | Strategy | Best for |
|----------|----------|----------|
| `rss` | Groups by RSS season number (`itunes:season`) | Podcasts with proper season tags |
| `category` | Groups by regex patterns against title | Named arcs like "Arc 1: ..." |
| `year` | Groups by publication year | Long-running podcasts |
| `titleAppearanceOrder` | Groups by title pattern, ordered by first appearance | Story arcs or series |

See [`examples/`](examples/) for complete configurations of each type.

## Validation

Validate a full config file:

```bash
scripts/validate.sh path/to/config.json
```

Validate individual playlist definition files:

```bash
scripts/validate.sh --playlist path/to/playlist.json
```

Requires [uv](https://docs.astral.sh/uv/). Dependencies install automatically on first run.

## Regenerate HTML Docs

```bash
scripts/generate-docs.sh
```

Requires [uv](https://docs.astral.sh/uv/). The script installs `json-schema-for-humans` automatically on first run.

## License

[MIT](LICENSE)
