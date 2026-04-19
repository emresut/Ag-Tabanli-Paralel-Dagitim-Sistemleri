--
Proje 5 Hakkında Bilgiler:
--

Dataset olarak aşağıdaki linkteki dataset kullanılmıştır.
https://www.kaggle.com/datasets/desolution01/messy-employee-dataset?resource=download

Dataset raw_employee_table isimli table'a import edildikten sonra messy_employee_table oluşturulmuştur ve aynı dataset oraya aktarılmıştır.

Ardından messy_employee_table table'ının içindeki veriler bir sql script kullanılarak bozulur.

Sonrasında yeni bir table oluşturulur --> clean_employee_table

main.sql scripti ile veri temizleme, veri dönüştürme, veri yükleme işlemleri yapılır. ETL süreçlerinden geçmiş olan clean_employee_table gözlemlenebilir.

(Dizin içindeki sql script'ler çalıştırılma sırasına göre isimlendirilmiştir.)

Ayrıca data_result_reports dizini içindeki script'lerden düzeltilmiş olan toplam problem sayısına, clean_employee_table içindeki null barındıran column sayısına, tüm table'lar için toplam employee sayısına bakılabilir.

--