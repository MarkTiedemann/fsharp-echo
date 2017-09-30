# fsharp-echo

**Minimal .NET Core HTTP echo server written in F#.**

This repository is intended to be used as a boilerplate for an as-simple-as-possible .NET Core HTTP server written in F#.

## Development

```sh
# restore packages
dotnet restore

# run app locally
dotnet run

# create release build
dotnet publish -c release

# build image and run container
docker build --rm -t echo .
docker run --rm -it -p 5000:5000 echo
```

## License

[WTFPL](http://www.wtfpl.net/) – Do What the F*ck You Want to Public License.

Made with :heart: by [@MarkTiedemann](https://twitter.com/MarkTiedemannDE).