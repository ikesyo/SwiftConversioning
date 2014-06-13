# SwiftConversioning ![License MIT](http://img.shields.io/badge/license-MIT-green.svg) 

Type conversion library for Swift lang. It uses the following feature:

```swift
extension Type {
    @conversion func __conversion() -> TypeToConvert {
        return TypeToConvert(self)    }}
```

## Supported Conversions

- String -> Array\<String\> like Ruby's `%w` notation
- String -> NSDecimalNumber
- String -> NSLocale
- String -> NSRegularExpression
- String -> NSScanner
- String -> NSURL
- String -> NSURLRequest
- String -> NSUUID

## Contributors

Syo Ikeda, [suicaicoca@gmail.com](mailto://suicaicoca@gmail.com)

## License

SwiftConversioning is licensed under the MIT license.
