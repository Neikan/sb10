<h1 align="center">About</h1>

# Run project
```sh
flutter run lib/main.dart
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Run tests
#### - unit:
```sh
flutter test
```


#### &#8729; integration:
```sh
flutter drive --target=test_driver/app.dart
```

<br />

# Модуль 10. Тестирование

#### Задание
1. Проведите тесты для формы входа:
    - В поле email должен быть валидный email-адрес, и оно не должно быть пустым.
    - Нужно проверить, что в поле phone введены только цифры.
    - При клике на кнопку «Отправить» нужно убедиться, что на экране появилась надпись «Добро пожаловать».


2. Проведите тесты для формы регистрации:
    - Поля firstName и lastName не должны быть пустыми.
    - Нужно проверить, что в поле phone введены только цифры.
    - При клике на кнопку «Отправить» нужно убедиться, что на экране появилась надпись «Вы успешно зарегистрировались».


# Useful
#### - Lcov on Windows:
```sh
choco install lcov
```
<br />
