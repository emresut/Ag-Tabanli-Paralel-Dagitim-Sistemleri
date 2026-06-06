Ad Soyad: Emre Süt

Öğrenci Numarası: 22290048

Rapor repoda pdf şeklinde mevcuttur.

Proje 5 Hakkında:
--

**Veri Temizleme ve ETL Süreçleri Tasarımı**

Proje 5 Youtube video linki: https://www.youtube.com/watch?v=ru98t8VcT-Y 

Dataset olarak linkteki dataset kullanılmıştır.
https://www.kaggle.com/datasets/desolution01/messy-employee-dataset?resource=download

SQL Server Management Studio kullanılmıştır. (MSSQL)

Dataset raw_employee_table isimli table'a import edildikten sonra messy_employee_table oluşturulur ve aynı dataset oraya aktarılır.

Ardından messy_employee_table table'ının içindeki veriler bir sql script kullanılarak bozulur.

Sonrasında yeni bir table oluşturulur --> clean_employee_table

main.sql scripti ile veri temizleme, veri dönüştürme, veri yükleme işlemleri yapılır. ETL süreçlerinden geçmiş olan clean_employee_table gözlemlenebilir.

(Dizin içindeki sql script'ler çalıştırılma sırasına göre isimlendirilmiştir. Yukarıda anlatılan her işi sql scriptler yapar.)

Ayrıca data_result_reports dizini içindeki script'lerden düzeltilmiş olan toplam problem sayısına, clean_employee_table içindeki null barındıran column sayısına, tüm table'lar için toplam employee sayısına bakılabilir.

Proje 2 Hakkında:
--

**Veritabanı Yedekleme ve Felaketten Kurtarma Planı**

Proje 2 Youtube video linki: https://www.youtube.com/watch?v=gOWnCZRAydg&t=1s

SQL Server Management Studio kullanılmıştır. (MSSQL)

Felaket senaryosuna konu olan db proje 5'te oluşturulan project_5_db

Öncelikle, oluşturulan sql_backups klasörüne project_5_db'nin full(tam) ve diff(fark) backup'ları alınır.

Ardından yedeklerin doğruluğu test edilir.

Sonrasında, restore etmeden önce dosya içindeki mantıksal isimler öğrenilir.

Restore edilir ve restore edilmiş db test edilir.

(Dizin içindeki sql script'ler çalıştırılma sırasına göre isimlendirilmiştir. Yukarıda anlatılan her işi sql scriptler yapar.)

Proje 1 Hakkında:
--

**Veritabanı Performans Optimizasyonu ve İzleme**

Dataset olarak linkteki dataset kullanılmıştır.
https://www.kaggle.com/datasets/mountboy/online-store-customer-transactions-1m-rows/data

SQL Server Management Studio kullanılmıştır. (MSSQL)

İlk önce bazı sorgular için başlangıç durumu analiz edilir sonrasında DMV(Dynamic Management Views) ile performans takibi yapılır.
Bu performans takibi süresince sys.dm_exec_query_stats ve sys.dm_exec_query_stats şeklinde 2 görünüm kullanılır.

Sonrasında bazı indeksleme işlemleri yapılır ve çıkan sonuçlarla birlikte sorgu iyileştirme net şekilde görülür.

Logical reads, elapsed time, user_seeks, user_scans gibi değerlerin değişimi üzerinden başlangıç durumu ile karşılaştırma yapılır.

Proje 3 Hakkında:
--

**Veritabanı Güvenliği ve Erişim Kontrolü**

SQL Server Management Studio kullanılmıştır. (MSSQL)

Projede, daha önce proje 5 için de kullanılan çalışan bilgilerini barındıran veri seti kullanılmıştır.

Öncelikle readonly_user, readwrite_user ve admin_user olmak üzere üç rol oluşturulmuştur.

Sonrasında hassas verilen gözükmemesi için view oluşturulmuştur.

Rollerin hepsi özelliklerine göre yetkilendirilmiştir.

Örnek SQL Injection saldırısı ele alınmıştır ve bu saldırının önüne parametreli sorgular ile nasıl geçilebileceği uygulamalı olarak gösterilmiştir.

Audit logları için table ve trigger oluşturulmuştur.

(Dizin içindeki sql script'ler çalıştırılma sırasına göre isimlendirilmiştir. Yukarıda anlatılan her işi sql scriptler yapar.)

Proje 6 Hakkında:
--

**Veritabanı Yükseltme ve Sürüm Yönetimi**

SQL Server Management Studio kullanılmıştır. (MSSQL)

Projede, daha önce proje 5 için de kullanılan çalışan bilgilerini barındıran veri seti kullanılmıştır.

Sürüm yönetimi ve sürüm geçiş süreci için 3 sürüm tasarlanmıştır.

İlk sürüm (v1) temel başlangıç veritabanı yapısını temsil eder. İkinci (v2) ve üçüncü (v3) sürümler de bu temel üzerinden yapılan değişiklikleri versiyonlar.

Geri dönüş (Rollback) planı rollback_v3_to_v2.sql ve rollback_v2_to_v1.sql gibi sql script'leri üzerinden oluşturulmuştur.

DDL trigger ile log tablosu üzerinden şema ve versiyon değişikliklerinin takibi yapılmıştır.