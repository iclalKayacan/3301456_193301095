import 'package:flutter/material.dart';

class DetaySayfasi extends StatelessWidget {
  List<String> items=[
    'KOÇ',
    'BOĞA',
    'İKİZLER',
    'YENGEÇ',
    'ASLAN',
    'BAŞAK',
    'TERAZİ',
    'AKREP',
    'YAY',
    'OĞLAK',
    'KOVA',
    'BALIK',
  ];

  List<String> metin=[
    '\n\n Elementi: Ateş \n\n Niteliği: Öncü \n\n Gezegeni: Mars \n\n Rengi: Kırmızı \n\n Taşı: Elmas \n\n Günü: Salı \n\n Koç burcu özellikleri: Aktif, dinamik, insiyatif sahibi, hızlı, lider, yönetici \n\n Koç burcu erkeği: Bir komutan edasında olabilir ve yönetme arzusu ruhunda vardır. Hızlıdır, bir süreci tamamladığında diğerine geçmekte zorlanmaz ancak her şeyi çabuk tüketen ve çabuk sıkılan bir yapıya sahiptir. \n\n Koç burcu kadını: Erkeksi özelliklere sahip, güçlü ve mücadeleci kadınlardır. Harekete geçmekten korkmaz, cesur ve girişimcidir. Ne istediğini bilir ve hızla kavuşmak ister. Sabırsız ve aceleci özellikleri hata yapmasına neden olabilir.',
    '\n\n Elementi: Toprak \n\n Niteliği: Sabit \n\n Gezegeni: Venüs \n\n Rengi: Toprak renkler, taba, bej, kahve, yeşil \n\n Taşı: Zümrüt \n\n Günü: Cuma \n\n Boğa burcu özellikleri: Güvenilir, rahatına, konforuna, yemeğe düşkün, gurme, harekete geçmekte zorlanan \n\n Boğa burcu erkeği: Güven ve sadakat önemlidir. Bir Boğa erkeğinin güvenini kazandıysanız sizden kolay kolay vazgeçmez. Lüks, para ve maddiyat onun için önemlidir. \n\n Boğa burcu kadını: Giyinmekten, süslenmekten hoşlanan, her daim güzel görünmek isteyen, alımlı, bakımlı, güzel kadındır. İlişkilerinde güven çok önemlidir. Karşılığında sonsuz bir sadakat sunabilir. Para harcamayı, alışverişi sever ancak hesabını da bilir.',
    '\n\n Elementi: Hava \n\n Niteliği: Değişken \n\n Gezegeni: Merkür \n\n Rengi: Sarı, turuncu \n\n Taşı: Agat \n\n Günü: Çarşamba \n\n İkizler burcu özellikleri: Esnek, uyumlu, çevik, konuşkan, meraklı, arkadaş canlısı \n\n İkizler burcu kadını: Değişime herkesten çok ihtiyacı vardır. bulunduğu ortamda çabuk sıkılır, dışarı çıkmak, hava almak ister. Özgürlüğüne karışılmamalıdır. Tatlı dilli ve konuşkandır. Dost canlısı yönü etrafında pek çok kişinin bulunmasını sağlar. Akıllı ve zekidir, ne istediğini çabuk bilir ve ona hızla ulaşmak için pratik yolları kolayca bulur. \n\n İkizler burcu erkeği: Sevimli ve canayakındır. Beğendiği kişiyi güzel sözleri, akılcı konuşması, bilgi ve birikimiyle kolayca etkileyebilir. Gezmeyi, seyahati sever, hareketli, değişken bir hayatı tercih eder. Sürekli değişim arar hayatında. Zorlu durumlar karşısında pratik çözümleriyle yol göstericidir.',
    '\n\n Elementi: Su \n\n Niteliği: Öncü \n\n Gezegeni: Ay \n\n Rengi: Mavi \n\n Taşı: İnci \n\n Günü: Pazartesi \n\n Yengeç burcu özellikleri: Evine, annesine, ailesine, yurduna düşkün, duyarlı, hassas, yemeğe, sofraya meraklı, tarihsel konulara ilgili, müzik yeteneğine sahip \n\n Yengeç burcu erkeği: Annesine ve eşine düşkün, evine bağlı erkeklerdir. Mutfaktan, yemek yapmaktan, güzel sofralardan keyif alır. Algısı yüksek, anlayışlı, şefkatli ve merhametlidir ancak bunu abarttığında boğucu gelebilir. \n\n Yengeç burcu kadını: İyi bir eş ve anne olurlar, evlerinde zaman geçirmeyi, mutfakla ilgilenmeyi, yemek pişirmeyi ve yemeyi severler. Kadınlar, kadınsal konularla ve çocuklarla araları çok iyidir.',
    '\n\n Elementi: Ateş \n\n Niteliği: Sabit \n\n Gezegeni: Güneş \n\n Rengi: Altın, turuncu \n\n Taşı: Yakut \n\n Günü: Pazar \n\n Aslan burcu özellikleri: Özgüvenli, gururlu, mağrur, koruyan, kollayan, gösterişli, sanata, estetiğe düşkün \n\n Aslan burcu erkeği: Gururnun okşanmasından, hizmet görmekten, pohpohlanmaktan hoşlanır. Ne kadar şık ve yakışıklı olduğunu sıkça tekrarlamanız gerekebilir. Baba olmak için doğmuştur, kendisi baba olmasa da korumacı ve kollayıcı özellikleriyle baba rolü üstlenebilir. \n\n Aslan burcu kadını: Giyinmeye, süslenmeye meraklıdır. Girdiği ortamlarda kıyafet, aksesuar ve saçlarıyla hemen dikkatleri üzerine çeker. Sahne duruşu ve yürüyüşüne sahiptir. Gururunu kıracak herhangi bir söz ve davranıştan özellikle sakınmanız gerekir.',
    '\n\n Elementi: Toprak \n\n Niteliği: Değişken \n\n Gezegeni: Merkür \n\n Rengi: Sarı \n\n Taşı: Akik \n\n Günü: Çarşamba \n\n Başak burcu özellikleri: Titiz, çalışkan, mükemmeliyetçi, eleştirel, detaycı, emektar, hizmet odaklı \n\n Başak burcu erkeği: Akılcı ve pratik bir zekaya sahiptir. Dakiktir, çalışkandır, detaylara önem verir. Eleştirel ve titiz yönleri zaman zaman onu zorlayıcı kılabilir. Ancak hizmet odaklı yapısıyla yaşamınızda siz farkında olmadan hayatınızı kolaylaştıran kişidir. \n\n Başak burcu kadını: Başak burcu kadınına bir şey beğendirmek oldukça zordur. En küçük kusur ve detayları görebilecek göze sahiptir. Bazen bu detaylar içinde çok fazla kaybolabilir. Seçim yapmakta oldukça zorlanır, kuruntu ve evhamlar geliştirebilir.',
    '\n\n Elementi: Hava \n\n Niteliği: Öncü \n\n Gezegeni: Venüs \n\n Rengi: Mavi, pembe \n\n Taşı: Safir \n\n Günü: Cuma \n\n Terazi burcu özellikleri: Adil, eşitlikçi, dengeli, uyumlu, sakin, sabırlı, akıllı, kibar \n\n Terazi burcu erkeği: Sakin, uyumlu görüntüsünün ardında ne istediğini iyi bilen ve dominant bir yapısı vardır. Huzur onun için önemlidir. Sanata düşkündür. Keyif aldığı konularda para harcamayı sever. İlişkisinde denge ve eşitlik bekler. \n\n Terazi burcu kadını: Zarafeti ve güzelliğiyle dikkat çekicidir. Akıllı ve sabırlıdır, çatışmadan hoşlanmaz, dengeli, uyumlu bir birliktelik arar. Gizli mükemmeliyetçi bir yönü vardır. Politik ve kibar tutumu ve davranışlarıyla takdir toplar.',
    '\n\n Elementi: Su \n\n Niteliği: Sabit \n\n Gezegeni: Mars \n\n Rengi: Bordo \n\n Taşı: Opal \n Günü: Salı \n\n Akrep burcu özellikleri: Mücadeleci, güçlü, yılmaz, hırslı kişilerdir. Pes ettiğini düşündüğünüz anda küllerinden yeniden doğabilir. Güvenilir, kaliteli insanlardır. \n\n Akrep burcu erkeği: Şeytan tüyü de denilebilecek farklı bir gizem, manyetizma ve çekiciliğe sahiptirler. Pek çok şeyin farkında değilmiş gibi dursalar da sezgileri sayesinde anlayışları, kavrayışları son derece güçlü erkeklerdir. Yalan ve riyaya tahammülleri yoktur. \n\n Akrep burcu kadını: Gizemli, sezgileri güçlü, zorlayıcı Akrep burcu kadınına asla yalan söylememenizi, onu aldatmamanızı tavsiye edebiliriz. Kapalı sırların üzerine gitmekten, sorgulamaktan asla vazgeçmez. Zor beğenir, zor bırakır.',
    '\n\n Elementi: Ateş \n\n Niteliği: Değişken \n\n Gezegeni: Jüpiter \n\n Rengi: Eflatun \n\n Taşı: Topaz \n\n Günü: Perşembe \n\n Yay burcu özellikleri: Bağımsız, özgür, hareketli, dinamik, sportif, keşif ve macera ruhuna sahip \n\n Yay burcu erkeği: Yay burcu erkeği özgürlüğü sever, ciddi bir birlikteliğiniz olabilir, evlenebilirsiniz ancak onu asla kısıtlamamalısınız. Bağlanmakta, ev erkeği olmakta zorlanır. Harika bir seyahat ortağı olur, eğlenceli zaman geçirebilirsiniz. \n\n Yay burcu kadını: Bağımsız bir ruha sahiptir. Gezmeyi, tozmayı, eğlenmeyi sever. Yeni yerler görmekten, yeni dost ve arkadaşlar tanımaktan, ufkunu ve sınırlarını zorlamaktan zevk alır. Bir Yay kadını ile asla sıkılmazsınız. Zor olan tek şey onun hızına ayak uydurabilmektir.',
    '\n\n Elementi: Toprak \n\n Niteliği: Öncü \n\n Gezegeni: Satürn \n\n Rengi: Kahverengi, siyah \n\n Taşı: Ametist \n\n Günü: Cumartesi \n\n Oğlak burcu özellikleri: Ciddi, soğukkanlı, gereğinde mesafeli, planlı, organize, disiplinli, iş ve kariyer odaklı \n\n Oğlak burcu erkeği: Güvenilirdir. Hiçbir şeyş kolay kolay kabul etmez, çok az şeyi kabul eder, ancak tamam dediğinde sonuna kadar güvenebilirsiniz. Zamanlaması çok iyidir, dakiktir. Disiplin, düzen, kural anlayışıyla zaman zaman sıkıcı olabilir ama sizi asla yarı yolda bırakmayacağından emin olabilirsiniz. \n\n Oğlak burcu kadını: Evine ve ailesine düşkündür. Yalnız kalmayı, tek başına hareket etmeyi sever. Kendi kural ve prensipleri vardır. Zaman zaman fazlasıyla disiplinli ve soğuk olabilir. İyi bir iş kadınıdır. Çalışmıyorsa bile evinde, ailesine karşı sorumluluklarının son derece bilincinde, tam bir görev insanıdır.',
    '\n\n Elementi: Hava \n\n Niteliği: Sabit \n\n Gezegeni: Satürn \n\n Rengi: Mavi yeşil \n\n Taşı: Akuamarin \n\n Günü: Cumartesi \n\n Kova burcu özellikleri: Arkadaş ve dost canlısı, sosyal, yenilikçi, sıradışı, marjinal \n\n Kova burcu erkeği: Evcimen olmaktan ziyade dışarıda bir hayatı tercih eden, arkadaşlıkları aileden önce gelen, farklı ve sıradışı erkeklerdir. Zeka ve akılcılıkları ile yol gösterirler, vizyoner bakış açılarıyla yaşadıkları topluma etki ederler. \n\n Kova burcu kadını: Farklıdır, sıradışıdır, zekidir. Ona ayak uydurmak çok da kolay değildir, bulunduğu ortamla uyumunu kendi yaratır. Oldukça sosyal ve arkadaş canlısı olsalar da eş seçimleri zordur. Teknolojik cihaz ve araçlar vazgeçilmezleridir.',
    '\n\n Elementi: Su \n\n Niteliği: Değişken \n\n Gezegeni: Jüpiter \n\n Rengi: Beyaz, lavanta \n\n Taşı: Ay taşı \n\n Günü: Perşembe \n\n Balık burcu özellikleri: Hassas, duyarlı, empatik, vicdanlı, duyarlı, sanatsal, hayırsever, yardımsever, kolay etkilenen \n\n Balık burcu erkeği: Etrafında olan biten her şeyden ve etrafındaki herkesten kolayca etkilenebilen hassas kişilerdir. Tam olarak anlaşılamayan, kendilerini de belirli kalıplar içinde tanımlayamayan muğlak, gizemli, karmaşık yönleri vardır. Şiire ve müziğe yatkın erkeklerdir. \n\n Balık burcu kadını: Masalsı, büyüleyici bir güzelliğe sahip olabilir. Gözleri anlamlı, derin ve oldukça etkileyicidir. Sinema aktrisi havasında olabilir. Giyinmeye, makyaja meraklıdır. Hassas ve alıngandır ancak her ne kadar fazlaca etki altında kalsa da bir şekilde zor durumlardan sıyrılmasını, kurtulmasını bilir. Akışta yaşar.',

  ];

  final int index;

  DetaySayfasi(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(items[index]),
          backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[50],
      body: Column(
        children: <Widget>[
          Text(
            metin[index]
          ),
        ],
      ),
      );

  }
}
