function handler(event) {
  var request = event.request
  var uri = request.uri
  var headers = request.headers

  // Basic 認証に用いる文字列(dXNlcjpwYXNzd29yZA==)の部分は shell などで以下のコマンドで生成します。
  // echo -n user:password | base64
  var basicAuth = 'Basic dXNlcjpwYXNzd29yZA=='

  if (
    typeof headers.authorization === 'undefined' ||
    headers.authorization.value !== basicAuth
  ) {
    return {
      statusCode: 401,
      statusDescription: 'Unauthorized',
      headers: { 'www-authenticate': { value: 'Basic' } },
    }
  }

  if (uri === '/') {
    return request
  }

  if (uri.endsWith('/')) {
    // リクエスト URL が https://hogehoge.com/foo/ の様に "/" で終わる場合は、この分岐に入ります。
    // その際の扱いは要件によって変えてください。

    // パターン1: Nuxt の例ですが、pages/bar/index.vue のような構成の場合は、
    // リクエスト URL が https://hogehoge.com/bar/ であれば、
    // https://hogehoge.com/bar/index.html にルーティングして欲しいので request.uri の末尾に index.html を付与します。
    request.uri = request.uri.concat('index.html')
    return request

    // パターン2: "/" で終わる場合は "/" を削ってリダイレクト
    return {
      statusCode: 302,
      statusDescription: 'Found',
      headers: {
        location: {
          value: request.uri.slice(0, -1),
        },
      },
    }
  } else if (!uri.includes('.')) {
    // ファイル名に "." が含まれていない = 拡張子がない場合、request.uri の末尾に  ".html" をつける
    request.uri = request.uri.concat('.html')
  }

  return request
}
