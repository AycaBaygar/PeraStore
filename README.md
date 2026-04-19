# PeraStore - Mini Katalog Uygulaması 

Bu proje, Flutter günlük eğitim programı kapsamında geliştirilmiş, temel seviye bir mobil katalog uygulamasıdır. Uygulama, modern bir kıyafet mağazasının ürün listeleme ve detay görüntüleme süreçlerini simüle eder.

## Proje Amacı
Öğrencilerin Flutter mimarisini kavraması, Stateless/Stateful widget farklarını öğrenmesi ve sayfalar arası veri taşıma (Navigator & Arguments) mantığına hakim olması amacıyla geliştirilmiştir.

## Özellikler
- **Ürün Katalog Ekranı:** `GridView.builder` ile optimize edilmiş, şık ürün kartları.
- **Dinamik Resim Yönetimi:** Hem yerel varlıkları (assets) hem de ağ üzerindeki (network) görselleri destekleyen yapı.
- **Ürün Detay Sayfası:** Ürün özelliklerini, kategorisini ve detaylı açıklamasını içeren sayfa yapısı.
- **Navigasyon:** Sayfalar arası akıcı geçiş ve geri dönme işlevselliği.
- **Sepet Simülasyonu:** Kullanıcı etkileşimi için `SnackBar` geri bildirimi.

## Kullanılan Teknolojiler
- **Framework:** Flutter 3.x
- **Dil:** Dart
- **Arayüz:** Material Design 3
- **Veri Yapısı:** Dart Class-based Data Modeling

## Kurulum ve Çalıştırma
Uygulamayı yerel ortamınızda çalıştırmak için:

1. Bu depoyu klonlayın:
   ```bash
   git clone [https://github.com/kullaniciadi/perastore.git](https://github.com/AycaBaygar/perastore.git)
   
2. Proje dizinine gidin:
   ```bash
   cd perastore
3. Gerekli paketleri yükleyin:
   ```bash
   flutter pub get
4. Uygulamayı çalıştırın:
      ```bash
      flutter run
   
