import 'package:flutter/material.dart';

class DogumHaritasi extends StatelessWidget {
  final textColor = Colors.black87;
  final color = Colors.white;

  final style = TextStyle(fontSize: 15, fontStyle: FontStyle.italic);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doğum Haritası'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Burcunuzun bulunduğu gezegeni seçiniz.',
              style: TextStyle(
                fontFamily: 'Zilla',
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            RaisedButton(
              child: Text(
                'MARS \nKoç-Akrep',
                style: style,
              ),
              color: color,
              textColor: textColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mars(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                'VENÜS \nBoğa-Terazi',
                style: style,
              ),
              color: color,
              textColor: textColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Venus(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                'MERKÜR \nİkizler-Başak',
                style: style,
              ),
              color: color,
              textColor: textColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Merkur(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                'AY \nYengeç',
                style: style,
              ),
              color: color,
              textColor: textColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ay(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                'GÜNEŞ \nAslan',
                style: style,
              ),
              color: color,
              textColor: textColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Gunes(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                'JÜPİTER \nYay-Balık',
                style: style,
              ),
              color: color,
              textColor: Colors.black87,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Jupiter(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                'SATÜRN \nOğlak-Kova',
                style: style,
              ),
              color: color,
              textColor: Colors.black87,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Saturn(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Mars extends StatelessWidget {
  const Mars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/Mars.png',
              width: 500, height: 300, fit: BoxFit.fill),
          const Text(
            '  Astrolojide Mars enerjimizi nereden aldığımızı ve nasıl ortaya koyup harcadığımızı gösterir. Mars uğraş, iş ve mücadele alanımızdır. '
            'Çabalarımızın kaynağını ve karşılığını gösterir. Bir haritada Mars’ın bulunduğu ev ve alan en çok çaba gösterip uğraştığımız alandır. '
            'Mars yükselen burçtaysa dışarıdaki algımız bir miktar agresif olabilir. Ayrıca yükselen burç görünümümüzü de gösterdiğinden yüz ve kafa bölgesinde bir iz getirebilir. '
            'Mars 2. Evdeyse para konularında, 3.’de iletişim konularında, 4.’de ev ve aile konularında, 5’de aşka ve çocuklarla ilgili, 6’da sağlıkla ilgili, '
            '7’de ilişkilerde, 8’de ortak paylaşımlarda, 9’da uzaklar ve yabancılarla ilgili, 10’da kariyer ve sorumluluklarda, 11’de arkadaşlıklarda, '
            '12’de bilinçaltı ve ruhsal alanda uğraştırıcı olup enerjimizi tüketebilir.',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          RaisedButton(
            child: Text("Geri"),
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}

class Venus extends StatelessWidget {
  const Venus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/Venus.png',
              width: 500, height: 300, fit: BoxFit.fill),
          const Text(
            '  Astrolojide Venüs ilişkilerimizi, ilişki kurma biçimimizi, ilişkilere yaklaşımımızı, para konularıyla ilgi ve şansımızı gösterir.'
            ' Âşık olduğumuz kişiler, sevdiğimiz konular hakkında bilgi verir. Doğum haritamızda Venüs 1. Evdeyse güzel bir görünüm, alımlı bir duruş verir ve şans getirir. '
            'Venüs 2. Evde para, 3. Evde iyi komşu ve kardeşler, tatlı bir dil, 4. Evde destekleyici bir ev ve aile, 5. Evde güzel aşklar, '
            '6. Evde iyi bir sağlık, 7. Evde güzel ilişkiler, 8. Evde eşten ve ortaktan kısmet ve para, 9. Evde uzaklardan sevgili, '
            '10. Evde iyi bir kariyer, 11. Evde güzel dostluklar, 12. Evde ruhani ve uhrevi aşklar getirebilir.',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          RaisedButton(
            child: Text("Geri"),
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}

class Merkur extends StatelessWidget {
  const Merkur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/Merkur.png',
              width: 500, height: 300, fit: BoxFit.fill),
          const Text(
            '  Astrolojide Merkür iletişim ve eğitim şeklimizi, durumumuzu, yaklaşımımızı gösterir. Ayrıca kardeşlerimiz ve komşularımıza dair bilgiler içerir.'
            'Doğum haritamızda Merkür 1. Evdeyse iletişim becerisi, 2. Evde ticari bir kafa, 3. Evde bolca sohbet, muhabbet, 4. Evde aileyle sıkı iletişim, '
            '5. Evde dilbaz aşklar, 6. Evde sağlık konularına merak ve ilgi, 7. Evde ilişkilerde bolca iletişim, 8. Evde ortak işler, '
            '9. Evde akademik eğitim, sosyal paylaşım, 10. Evde sunum yetenekleri, 11. Evde sosyal ağlar, 12. Evde ruhani, spiritüel konulara ilgi ve merak getirebilir.',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          RaisedButton(
            child: Text("Geri"),
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}

class Ay extends StatelessWidget {
  const Ay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/Ay.png',
              width: 500, height: 300, fit: BoxFit.fill),
          const Text(
            '  Astrolojide Ay duygu dünyamız, ailemiz ve annemizi gösterir. '
            '1. Evdeki Ay annenin ve ailenin kişinin her daim ruhunda olduğunu, 2. Evdeki Ay güven veren, destekleyen bir ev ve aileyi, '
            '3. Evdeki Ay eğitim yönünden destekleyici bir anne veya aileyi, 4. Evdeki Ay büyükanne büyükbaba ya da yaşlı kişilerin varlığını, '
            '5. Evdeki Ay neşeli bir aile veya anneyi, 6. Evdeki Ay hizmet odaklı bir ev veya aileyi, 7. Evdeki Ay ilişkilerde çalkantılı durumları, '
            '8. Evdeki Ay hırslı kadın figürleri, 9. Evdeki Ay uzak ev ve aileyi, 10. Evdeki Ay dışa vuran duyguları, 11. Evdeki Ay anaç arkadaşları, '
            '12. Evdeki Ay kayıp bir ev veya anneyi gösterebilir.',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          RaisedButton(
            child: Text("Geri"),
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}

class Gunes extends StatelessWidget {
  const Gunes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/Gunes.png',
              width: 500, height: 300, fit: BoxFit.fill),
          const Text(
            '  Doğum haritasında Güneş egoyu ve babalarımızı anlatır.  '
            'Güneş 1. Evde kişinin olduğu gibi göründüğüne işaret eder. Güneş 2. Evdeyse kişi kendini sahip olduklarıyla gösterir. 3. Evde eğitimiyle, bildikleriyle kişi kendini gösterir. '
            'Güneş 4. Evde ise aile önemlidir. 5. Evde Güneş oldukça şaşaalı ve yaratıcı olabilir. Güneş 6. Evde ise kişinin hizmetleriyle kendini tanımladığını gösterir. '
            '7. Evde kişi kendini ilişkileriyle, 8. Evde ortaklaşa sahip olduklarıyla, 9. Evde fikirleriyle, 10. Evde kariyer ve imajıyla,'
            '11. Evde arkadaşlarıyla 12. Evde ise anlaşılmaz bir şekilde tanımlayabilir.',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          RaisedButton(
            child: Text("Geri"),
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}

class Jupiter extends StatelessWidget {
  const Jupiter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/Jupiter.png',
              width: 500, height: 300, fit: BoxFit.fill),
          const Text(
            '  Astrolojide Jüpiter bulunduğu burcun ve alanın konularını büyütür ve genişletir.  '
            '1. Evdeyse gösterişli bir görünüm veya duruşumuz olabilir. Bu konum bol iştah, şişmanlık gibi durumlar getirebilir. 2. Evdeyse maddi bereket, imkânlar, para getirebilir. '
            'Yanı sıra lükse, konfora, rahata aşırı düşkünlük getirebilir. 3. Evdeki Jüpiter bolca iletişim, eğitimde başarı, mutluluk getirebilir. '
            '4.Evde aile ve ebeveynlerden yana şans getirebilir.5. Evde çocuklardan yana kısmet getirirken bolca aşk da söz konusu olabilir. '
            '6. Evde sağlık açısından destekleyici bir görünümdür.7. Evde eşten, evlilikten ve ortaklıklardan yana çokça şans getirebilir.'
            '8. Evde eşten veya ortaklıklardan yana maddi kısmetlere işaret eder. 9. Evde uzaklardan, yurt dışından, yolculuklardan yana şans ve kısmet getirebilir. '
            '10. Evde iş yaşamı ve kariyer açısından şanslı bir görünümdür.11. Evde sosyal yaşam, arkadaşlık ve dostluklardan yana bereketli olabilir.'
            '12. Evde görünmeyen, beklenmedik, sürpriz şanslara işaret edebilir, manevi ve ruhsal zenginlik getirebilir.',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          RaisedButton(
            child: Text("Geri"),
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}

class Saturn extends StatelessWidget {
  const Saturn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/Saturn.png',
              width: 500, height: 300, fit: BoxFit.fill),
          const Text(
            '  Astrolojide Satürn yaşamımız boyunca yapılandırdığımız konuları, bu yapıyı oluşturma şeklimizi, tarzımızı, yol ve araçlarımızı gösterir.  '
            'Doğum haritalarımızda Satürn 1. Evdeyse yaşamımızın ilk yılları ve çocukluk dönemi zorluklarla geçmiş olabilir. 2. Evde Satürn maddi problemlere işaret edebilir. '
            '3. Evde iletişim sorunlarını ve ilk öğrenim çağı güçlüklerini gösterebilir. 4. Ev ailede problemler, uzak ve kopuk bir aile olabilir. '
            '5. Evde Satürn aşkta engellere neden olabilir. 6. Evde Satürn sağlık problemlerine işaret edebilir. Gündelik yaşamda ve çalışma hayatında zorluk göstergesi olabilir. '
            '7. Evde Satürn ilişkilerde ayrılık ve yalnızlaşma getirebilir. 8. Evde uzun ömür verebilir. 9. Evde macera ve keşifleri, uzaklarla bağlantı ve yolculukları zorlu kılabilir. '
            '10. Evde geç bir kariyere, kariyer yolunda zorlu zahmetli bir yola işaret edebilir. 11. Evde arkadaşlık ilişkilerinde zorluk getirebilir. '
            '12. Evde ise manevi güçlüklerin, bilinçaltına itilmiş çokça sorunun göstergesi olabilir.',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          RaisedButton(
            child: Text("Geri"),
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ],
      ),
    );
  }
}
