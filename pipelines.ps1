 on:
  push:
    branches:
    - main
env:
  buildConfiguration: Release
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: dotnet build ${{ env.buildConfiguration }}
      run: dotnet build --configuration ${{ env.buildConfiguration }}