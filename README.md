Ad Soyad: Emre Süt
Öğrenci Numarası: 22290048

Rapor repoda pdf şeklinde mevcuttur.

--
Proje 5 Hakkında:
--

Veri Temizleme ve ETL Süreçleri Tasarımı

Dataset olarak linkteki dataset kullanılmıştır.
https://www.kaggle.com/datasets/desolution01/messy-employee-dataset?resource=download

SQL Server Management Studio kullanılmıştır. (MSSQL)

Dataset raw_employee_table isimli table'a import edildikten sonra messy_employee_table oluşturulur ve aynı dataset oraya aktarılır.

Ardından messy_employee_table table'ının içindeki veriler bir sql script kullanılarak bozulur.

Sonrasında yeni bir table oluşturulur --> clean_employee_table

main.sql scripti ile veri temizleme, veri dönüştürme, veri yükleme işlemleri yapılır. ETL süreçlerinden geçmiş olan clean_employee_table gözlemlenebilir.

(Dizin içindeki sql script'ler çalıştırılma sırasına göre isimlendirilmiştir. Yukarıda anlatılan her işi sql scriptler yapar.)

Ayrıca data_result_reports dizini içindeki script'lerden düzeltilmiş olan toplam problem sayısına, clean_employee_table içindeki null barındıran column sayısına, tüm table'lar için toplam employee sayısına bakılabilir.

--
Proje 2 Hakkında:
--

Veritabanı Yedekleme ve Felaketten Kurtarma Planı

SQL Server Management Studio kullanılmıştır. (MSSQL)

Felaket senaryosuna konu olan db proje 5'te oluşturulan project_5_db

Öncelikle, oluşturulan sql_backups klasörüne project_5_db'nin full(tam) ve diff(fark) backup'ları alınır.

Ardından yedeklerin doğruluğu test edilir.

Sonrasında, restore etmeden önce dosya içindeki mantıksal isimler öğrenilir.

Restore edilir ve restore edilmiş db test edilir.

(Dizin içindeki sql script'ler çalıştırılma sırasına göre isimlendirilmiştir. Yukarıda anlatılan her işi sql scriptler yapar.)