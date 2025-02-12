# Serverpod Basic App

Bu proje, [Serverpod](https://serverpod.dev/) kullanılarak oluşturulmuş temel bir uygulamadır. Serverpod, Flutter topluluğu için Dart ile yazılmış, açık kaynaklı ve ölçeklenebilir bir uygulama sunucusudur.

## 🚀 Özellikler

- **Sunucu Tarafı Kodlama**: Dart dilinde yazılmış sunucu tarafı kod.  
- **Otomatik Kod Üretimi**: Sunucu kodunu analiz ederek istemci tarafı ve protokol kodlarının otomatik olarak üretilmesi.  
- **Veritabanı Entegrasyonu**: ORM desteği ile veritabanı işlemlerinin kolaylaştırılması.  
- **Önbellekleme**: Yüksek performanslı dağıtılmış önbellek desteği.  
- **Gerçek Zamanlı İletişim**: Web soketleri üzerinden gerçek zamanlı veri akışı.  

## 📌 Kurulum

### 1. Gereksinimler

- [Flutter](https://flutter.dev/docs/get-started/install) ve Dart SDK  
- [Docker](https://docs.docker.com/get-docker/)  

### 2. Serverpod CLI Kurulumu

```bash
dart pub global activate serverpod_cli
```

### 3. Proje Oluşturma

```bash
serverpod create my_project
cd my_project
```

### 4. Docker Servislerini Başlatma

```bash
cd my_project_server
docker compose up --build --detach
```

### 5. Sunucuyu Başlatma

```bash
dart bin/main.dart --apply-migrations
```

### 6. Flutter Uygulamasını Çalıştırma

```bash
cd ../my_project_flutter
flutter run
```

## 📖 Kullanım

Bu uygulama, Serverpod'un temel özelliklerini gösteren bir örnek sunar. İstemci uygulaması, sunucuya istekler gönderir ve sunucudan yanıtlar alır. Daha fazla bilgi için [Serverpod belgelerine](https://serverpod.dev/docs/getting-started) göz atabilirsiniz.

## 🤝 Katkıda Bulunma

Katkılarınızı memnuniyetle karşılıyoruz. Lütfen katkıda bulunmadan önce bir konu açarak ne üzerinde çalışmak istediğinizi belirtin.

## 📜 Lisans

Bu proje [MIT Lisansı](LICENSE) ile lisanslanmıştır.
