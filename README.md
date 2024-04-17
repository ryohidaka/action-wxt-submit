# wxt-submit

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A GitHub Action that submits new versions of an extension created with [WXT](https://wxt.dev/) for review.

## Notes

Only **pnpm** is supported.

## Usage

```yml
- uses: ryohidaka/wxt-submit@v1
  with:
    dry-run: true
    chrome-extension-id: ${{ secrets.CHROME_EXTENSION_ID }}
    chrome-client-id: ${{ secrets.CHROME_CLIENT_ID }}
    chrome-client-secret: ${{ secrets.CHROME_CLIENT_SECRET }}
    chrome-refresh-token: ${{ secrets.CHROME_REFRESH_TOKEN }}
```

## Inputs

| input                  | required | default | description          |
| ---------------------- | -------- | ------- | -------------------- |
| `dry-run`              | ❌       | `false` | Dry Run Flag         |
| `chrome-extension-id`  | ✔        |         | Chrome Extension ID  |
| `chrome-client-id`     | ✔        |         | Chrome Client ID     |
| `chrome-client-secret` | ✔        |         | Chrome Client Secret |
| `chrome-refresh-token` | ✔        |         | Chrome Refresh Token |

## Link

- [WXT](https://wxt.dev/)

- [Publishing](https://wxt.dev/guide/publishing.html#publishing)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
