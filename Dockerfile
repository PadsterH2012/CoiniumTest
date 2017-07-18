FROM mono:3.10-onbuild

VOLUME Config
VOLUME Coins

COPY ./release ./TestingConsoleApp.exe
COPY ./pools.json ./TestingConsoleApp.exe
COPY ./TestingConsoleApp.exe ./TestingConsoleApp.exe



CMD [ "mono", "./TestingConsoleApp.exe" ]

