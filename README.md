# WXT Submit

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-wxt-submit)](https://github.com/ryohidaka/action-wxt-submit/releases/)
[![Test Action](https://github.com/ryohidaka/action-wxt-submit/actions/workflows/main.yml/badge.svg)](https://github.com/ryohidaka/action-wxt-submit/actions/workflows/main.yml)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/B0B6TVH92)

A GitHub Action that submits new versions of an extension created with [WXT](https://wxt.dev/) for review.

## Usage

```yml
- uses: pnpm/action-setup@v4
  with:
    version: "latest"

- uses: ryohidaka/wxt-submit@v1
  with:
    dry-run: true
    root-path: .

    # For Chrome Extension
    chrome: true
    chrome-extension-id: ${{ secrets.CHROME_EXTENSION_ID }}
    chrome-client-id: ${{ secrets.CHROME_CLIENT_ID }}
    chrome-client-secret: ${{ secrets.CHROME_CLIENT_SECRET }}
    chrome-refresh-token: ${{ secrets.CHROME_REFRESH_TOKEN }}

    # For Firefox Addon
    firefox: true
    firefox-extension-id: ${{ secrets.FIREFOX_EXTENSION_ID }}
    firefox-jwt-issuer: ${{ secrets.FIREFOX_JWT_ISSUER }}
    firefox-jwt-secret: ${{ secrets.FIREFOX_JWT_SECRET }}

    # For Edge Extension
    edge: true
    edge-product-id: ${{ secrets.EDGE_PRODUCT_ID }}
    edge-client-id: ${{ secrets.EDGE_CLIENT_ID }}
    edge-client-secret: ${{ secrets.EDGE_CLIENT_SECRET }}
    edge-access-token-url: ${{ secrets.EDGE_ACCESS_TOKEN_URL }}
```

## Inputs

| input       | required | default | description                      |
| ----------- | -------- | ------- | -------------------------------- |
| `dry-run`   |          | `false` | Dry Run Flag                     |
| `root-path` |          | `.`     | The root path of the wxt project |

### For Chrome Extension

| input                  | required | default | description                          |
| ---------------------- | -------- | ------- | ------------------------------------ |
| `chrome`               |          | `false` | Flag whether to target chrome or not |
| `chrome-extension-id`  | ✔        |         | Chrome Extension ID                  |
| `chrome-client-id`     | ✔        |         | Chrome Client ID                     |
| `chrome-client-secret` | ✔        |         | Chrome Client Secret                 |
| `chrome-refresh-token` | ✔        |         | Chrome Refresh Token                 |

### For Firefox Addon

| input                  | required | default | description                           |
| ---------------------- | -------- | ------- | ------------------------------------- |
| `firefox`              |          | `false` | Flag whether to target firefox or not |
| `firefox-extension-id` | ✔        |         | Firefox Extension ID                  |
| `firefox-jwt-issuer`   | ✔        |         | Firefox JWT Issuer                    |
| `firefox-jwt-secret`   | ✔        |         | Firefox JWT Secret                    |

### For Edge Extension

| input                   | required | default | description                        |
| ----------------------- | -------- | ------- | ---------------------------------- |
| `edge`                  |          | `false` | Flag whether to target Edge or not |
| `edge-product-id`       | ✔        |         | Edge Product ID                    |
| `edge-client-id`        | ✔        |         | Edge Client ID                     |
| `edge-client-secret`    | ✔        |         | Edge Client Secret                 |
| `edge-access-token-url` | ✔        |         | Edge Access Token URL              |

## Link

- [WXT](https://wxt.dev/)

- [Publishing](https://wxt.dev/guide/publishing.html#publishing)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
