# Ñistagram

Aplicación móvil - taller práctico 

**Ian Guatame Villarreal**

## Descripción

Vibe simula una red social con tres secciones, navegables desde una barra inferior (`BottomNavigationBar`):

- **Home:** banner promocional, carrusel horizontal de historias destacadas y publicaciones (`PostCard`) con botón "Me gusta".
- **Chats:** lista vertical de conversaciones (`ChatTile`) con avatar, último mensaje, hora e indicador de mensajes sin leer.
- **Laboratorio de widgets:** contador de seguidores interactivo (`NumericCounter`) con límites y actualización mediante `setState()`.



## Estructura del proyecto

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── chats_screen.dart
│   └── laboratory_screen.dart
└── widgets/
    ├── post_card.dart
    ├── promotional_banner.dart
    ├── image_carousel.dart
    ├── chat_tile.dart
    └── numeric_counter.dart
```

## Cómo ejecutar

1. Instalar Flutter y verificar con `flutter doctor`.
2. Clonar el repositorio:

   git clone [https://github.com/ianguatame/Taller-pr-ctico-de-desarrollo-m-vil.git]
   cd [Taller-pr-ctico-de-desarrollo-m-vil]

3. Descargar las dependencias:
```
   flutter pub get
```
4. Iniciar un emulador o conectar un dispositivo y ejecutar:
```
   flutter run
```

> Las imágenes se cargan desde internet, por lo que el emulador o dispositivo necesita conexión.

## Evidencias


- **Capturas de pantalla:** carpeta `Capturas/` (Home, Chats y Laboratorio de widgets).