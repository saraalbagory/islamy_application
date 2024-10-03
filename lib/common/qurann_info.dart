class QurannInfo {
  static List<String> quranSurasEn = [
    "Al-Fatiha", // The Opening
    "Al-Baqara", // The Cow
    "Aal-E-Imran", // The Family of Imran
    "An-Nisa", // The Women
    "Al-Ma'idah", // The Table Spread
    "Al-An'am", // The Cattle
    "Al-A'raf", // The Heights
    "Al-Anfal", // The Spoils of War
    "At-Tawbah", // The Repentance
    "Yunus", // Jonah
    "Hud", // Hud
    "Yusuf", // Joseph
    "Ar-Ra'd", // The Thunder
    "Ibrahim", // Abraham
    "Al-Hijr", // The Rocky Tract
    "An-Nahl", // The Bee
    "Al-Isra", // The Night Journey
    "Al-Kahf", // The Cave
    "Maryam", // Mary
    "Ta-Ha", // Ta-Ha
    "Al-Anbiya", // The Prophets
    "Al-Hajj", // The Pilgrimage
    "Al-Mu'minun", // The Believers
    "An-Nur", // The Light
    "Al-Furqan", // The Criterion
    "Ash-Shu'ara", // The Poets
    "An-Naml", // The Ant
    "Al-Qasas", // The Stories
    "Al-Ankabut", // The Spider
    "Ar-Rum", // The Romans
    "Luqman", // Luqman
    "As-Sajda", // The Prostration
    "Al-Ahzab", // The Confederates
    "Saba", // Sheba
    "Fatir", // The Originator
    "Ya-Sin", // Ya-Sin
    "As-Saffat", // The Ranks
    "Sad", // Sad
    "Az-Zumar", // The Groups
    "Ghafir", // The Forgiver
    "Fussilat", // Explained in Detail
    "Ash-Shura", // Consultation
    "Az-Zukhruf", // Ornaments of Gold
    "Ad-Dukhan", // Smoke
    "Al-Jathiyah", // The Kneeling
    "Al-Ahqaf", // The Wind-Curved Sandhills
    "Muhammad", // Muhammad
    "Al-Fath", // The Victory
    "Al-Hujurat", // The Rooms
    "Qaf", // Qaf
    "Adh-Dhariyat", // The Winnowing Winds
    "At-Tur", // The Mount
    "An-Najm", // The Star
    "Al-Qamar", // The Moon
    "Ar-Rahman", // The Beneficent
    "Al-Waqi'a", // The Event
    "Al-Hadid", // The Iron
    "Al-Mujadila", // The Pleading Woman
    "Al-Hashr", // The Exile
    "Al-Mumtahina", // She That is to be Examined
    "As-Saff", // The Ranks
    "Al-Jumu'a", // The Congregation
    "Al-Munafiqun", // The Hypocrites
    "At-Taghabun", // The Mutual Disillusion
    "At-Talaq", // The Divorce
    "At-Tahrim", // The Prohibition
    "Al-Mulk", // The Sovereignty
    "Al-Qalam", // The Pen
    "Al-Haaqqa", // The Inevitable
    "Al-Ma'arij", // The Ascending Stairways
    "Nuh", // Noah
    "Al-Jinn", // The Jinn
    "Al-Muzzammil", // The Enshrouded One
    "Al-Muddaththir", // The Cloaked One
    "Al-Qiyama", // The Resurrection
    "Al-Insan", // Man
    "Al-Mursalat", // The Emissaries
    "An-Naba", // The Tidings
    "An-Nazi'at", // The Snatching
    "Abasa", // He Frowned
    "At-Takwir", // The Overthrowing
    "Al-Infitar", // The Cleaving
    "Al-Mutaffifin", // The Defrauding
    "Al-Inshiqaq", // The Splitting Open
    "Al-Buruj", // The Constellations
    "At-Tariq", // The Morning Star
    "Al-Ala", // The Most High
    "Al-Ghashiyah", // The Overwhelming
    "Al-Fajr", // The Dawn
    "Al-Balad", // The City
    "Ash-Shams", // The Sun
    "Al-Lail", // The Night
    "Ad-Duha", // The Morning Hours
    "Ash-Sharh", // The Relief
    "At-Tin", // The Fig
    "Al-Alaq", // The Clot
    "Al-Qadr", // The Power
    "Al-Bayyina", // The Clear Evidence
    "Az-Zalzalah", // The Earthquake
    "Al-Adiyat", // The Courser
    "Al-Qaria", // The Calamity
    "At-Takathur", // The Rivalry in World Increase
    "Al-Asr", // The Time
    "Al-Humazah", // The Traducer
    "Al-Fil", // The Elephant
    "Quraysh", // Quraysh
    "Al-Ma'un", // The Small Kindnesses
    "Al-Kawthar", // Abundance
    "Al-Kafirun", // The Disbelievers
    "An-Nasr", // The Divine Support
    "Al-Masad", // The Palm Fiber
    "Al-Ikhlas", // The Sincerity
    "Al-Falaq", // The Daybreak
    "An-Nas" // The Mankind
  ];
  static List<String> arSuras = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  static List<int> suraVersesCount = [
    7, // Al-Fatiha
    286, // Al-Baqara
    200, // Aal-E-Imran
    176, // An-Nisa
    120, // Al-Ma'idah
    165, // Al-An'am
    206, // Al-A'raf
    75, // Al-Anfal
    129, // At-Tawbah
    109, // Yunus
    123, // Hud
    111, // Yusuf
    43, // Ar-Ra'd
    52, // Ibrahim
    99, // Al-Hijr
    128, // An-Nahl
    111, // Al-Isra
    110, // Al-Kahf
    98, // Maryam
    135, // Ta-Ha
    112, // Al-Anbiya
    78, // Al-Hajj
    118, // Al-Mu'minun
    64, // An-Nur
    77, // Al-Furqan
    227, // Ash-Shu'ara
    93, // An-Naml
    88, // Al-Qasas
    69, // Al-Ankabut
    60, // Ar-Rum
    34, // Luqman
    30, // As-Sajda
    73, // Al-Ahzab
    54, // Saba
    45, // Fatir
    83, // Ya-Sin
    182, // As-Saffat
    88, // Sad
    75, // Az-Zumar
    85, // Ghafir
    54, // Fussilat
    53, // Ash-Shura
    89, // Az-Zukhruf
    59, // Ad-Dukhan
    37, // Al-Jathiyah
    35, // Al-Ahqaf
    38, // Muhammad
    29, // Al-Fath
    18, // Al-Hujurat
    45, // Qaf
    60, // Adh-Dhariyat
    49, // At-Tur
    62, // An-Najm
    55, // Al-Qamar
    78, // Ar-Rahman
    96, // Al-Waqi'a
    29, // Al-Hadid
    22, // Al-Mujadila
    24, // Al-Hashr
    13, // Al-Mumtahina
    14, // As-Saff
    11, // Al-Jumu'a
    11, // Al-Munafiqun
    18, // At-Taghabun
    12, // At-Talaq
    12, // At-Tahrim
    30, // Al-Mulk
    52, // Al-Qalam
    44, // Al-Haaqqa
    28, // Al-Ma'arij
    28, // Nuh
    20, // Al-Jinn
    20, // Al-Muzzammil
    56, // Al-Muddaththir
    40, // Al-Qiyama
    31, // Al-Insan
    50, // Al-Mursalat
    40, // An-Naba
    46, // An-Nazi'at
    42, // Abasa
    29, // At-Takwir
    19, // Al-Infitar
    36, // Al-Mutaffifin
    25, // Al-Inshiqaq
    22, // Al-Buruj
    17, // At-Tariq
    19, // Al-Ala
    26, // Al-Ghashiyah
    30, // Al-Fajr
    20, // Al-Balad
    15, // Ash-Shams
    21, // Al-Lail
    11, // Ad-Duha
    8, // Ash-Sharh
    8, // At-Tin
    19, // Al-Alaq
    5, // Al-Qadr
    8, // Al-Bayyina
    8, // Az-Zalzalah
    11, // Al-Adiyat
    11, // Al-Qaria
    8, // At-Takathur
    3, // Al-Asr
    9, // Al-Humazah
    5, // Al-Fil
    4, // Quraysh
    7, // Al-Ma'un
    3, // Al-Kawthar
    6, // Al-Kafirun
    3, // An-Nasr
    5, // Al-Masad
    4, // Al-Ikhlas
    5, // Al-Falaq
    6 // An-Nas
  ];
  static int numberOfSuras=114;
}
