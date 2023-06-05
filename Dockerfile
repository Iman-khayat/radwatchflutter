
FROM openpriv/flutter-desktop:latest
 

WORKDIR /apps
COPY pubspec.yaml .
RUN flutter install
COPY . .

EXPOSE 5000

 
CMD ["flutter ","run"]

