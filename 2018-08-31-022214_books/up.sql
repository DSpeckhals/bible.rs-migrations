CREATE TABLE books (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    chapter_count INTEGER NOT NULL,
    testament TEXT NOT NULL CHECK(testament in ('OLD', 'NEW'))
);
INSERT INTO books VALUES
(1,'Genesis',50,'OLD'),
(2,'Exodus',40,'OLD'),
(3,'Leviticus',27,'OLD'),
(4,'Numbers',36,'OLD'),
(5,'Deuteronomy',34,'OLD'),
(6,'Joshua',24,'OLD'),
(7,'Judges',21,'OLD'),
(8,'Ruth',4,'OLD'),
(9,'1 Samuel',31,'OLD'),
(10,'2 Samuel',24,'OLD'),
(11,'1 Kings',22,'OLD'),
(12,'2 Kings',25,'OLD'),
(13,'1 Chronicles',29,'OLD'),
(14,'2 Chronicles',36,'OLD'),
(15,'Ezra',10,'OLD'),
(16,'Nehemiah',13,'OLD'),
(17,'Esther',10,'OLD'),
(18,'Job',42,'OLD'),
(19,'Psalms',150,'OLD'),
(20,'Proverbs',31,'OLD'),
(21,'Ecclesiastes',12,'OLD'),
(22,'Song of Solomon',8,'OLD'),
(23,'Isaiah',66,'OLD'),
(24,'Jeremiah',52,'OLD'),
(25,'Lamentations',5,'OLD'),
(26,'Ezekiel',48,'OLD'),
(27,'Daniel',12,'OLD'),
(28,'Hosea',14,'OLD'),
(29,'Joel',3,'OLD'),
(30,'Amos',9,'OLD'),
(31,'Obadiah',1,'OLD'),
(32,'Jonah',4,'OLD'),
(33,'Micah',7,'OLD'),
(34,'Nahum',3,'OLD'),
(35,'Habakkuk',3,'OLD'),
(36,'Zephaniah',3,'OLD'),
(37,'Haggai',2,'OLD'),
(38,'Zechariah',14,'OLD'),
(39,'Malachi',4,'OLD'),
(40,'Matthew',28,'NEW'),
(41,'Mark',16,'NEW'),
(42,'Luke',24,'NEW'),
(43,'John',21,'NEW'),
(44,'Acts',28,'NEW'),
(45,'Romans',16,'NEW'),
(46,'1 Corinthians',16,'NEW'),
(47,'2 Corinthians',13,'NEW'),
(48,'Galatians',6,'NEW'),
(49,'Ephesians',6,'NEW'),
(50,'Philippians',4,'NEW'),
(51,'Colossians',4,'NEW'),
(52,'1 Thessalonians',5,'NEW'),
(53,'2 Thessalonians',3,'NEW'),
(54,'1 Timothy',6,'NEW'),
(55,'2 Timothy',4,'NEW'),
(56,'Titus',3,'NEW'),
(57,'Philemon',1,'NEW'),
(58,'Hebrews',13,'NEW'),
(59,'James',5,'NEW'),
(60,'1 Peter',5,'NEW'),
(61,'2 Peter',3,'NEW'),
(62,'1 John',5,'NEW'),
(63,'2 John',1,'NEW'),
(64,'3 John',1,'NEW'),
(65,'Jude',1,'NEW'),
(66,'Revelation',22,'NEW');

CREATE TABLE book_abbreviations(
    id INTEGER PRIMARY KEY NOT NULL,
    book_id INTEGER NOT NULL REFERENCES books(id),
    abbreviation TEXT NOT NULL
);
CREATE INDEX book_abbreviations_book_id_idx ON book_abbreviations(book_id);
CREATE INDEX book_abbreviations_abbreviation_idx ON book_abbreviations(abbreviation);

INSERT INTO book_abbreviations (book_id, abbreviation)
SELECT id, LOWER(name) FROM books;

INSERT INTO book_abbreviations (book_id, abbreviation) VALUES
(1,'gen'),
(1,'ge'),
(1,'gn'),
(2,'ex'),
(2,'exod'),
(2,'exo'),
(3,'lev'),
(3,'le'),
(3,'lv'),
(4,'num'),
(4,'nu'),
(4,'nm'),
(4,'nb'),
(5,'deut'),
(5,'de'),
(5,'dt'),
(6,'josh'),
(6,'jos'),
(6,'jsh'),
(7,'judg'),
(7,'jdg'),
(7,'jg'),
(7,'jdgs'),
(8,'ruth'),
(8,'rth'),
(8,'ru'),
(9,'1 sam'),
(9,'1 sm'),
(9,'1 sa'),
(9,'1 s'),
(9,'i sam'),
(9,'i sa'),
(9,'1sam'),
(9,'1sa'),
(9,'1s'),
(9,'1st samuel'),
(9,'1st sam'),
(9,'first samuel'),
(9,'first sam'),
(10,'2 sam'),
(10,'2 sm'),
(10,'2 sa'),
(10,'2 s'),
(10,'ii sam'),
(10,'ii sa'),
(10,'2sam'),
(10,'2sa'),
(10,'2s'),
(10,'2nd samuel'),
(10,'2nd sam'),
(10,'second samuel'),
(10,'second sam'),
(11,'1 kings'),
(11,'1 kgs'),
(11,'1 ki'),
(11,'1kgs'),
(11,'1kin'),
(11,'1ki'),
(11,'1k'),
(11,'i kgs'),
(11,'i ki'),
(11,'1st kings'),
(11,'1st kgs'),
(11,'first kings'),
(11,'first kgs'),
(12,'2 kings'),
(12,'2 kgs'),
(12,'2 ki'),
(12,'2kgs'),
(12,'2kin'),
(12,'2ki'),
(12,'2k'),
(12,'ii kgs'),
(12,'ii ki'),
(12,'2nd kings'),
(12,'2nd kgs'),
(12,'second kings'),
(12,'second kgs'),
(13,'1 chron'),
(13,'1 chr'),
(13,'1 ch'),
(13,'1chron'),
(13,'1chr'),
(13,'1ch'),
(13,'i chron'),
(13,'i chr'),
(13,'i ch'),
(13,'1st chronicles'),
(13,'1st chron'),
(13,'first chronicles'),
(13,'first chron'),
(14,'2 chron'),
(14,'2 chr'),
(14,'2 ch'),
(14,'2chron'),
(14,'2chr'),
(14,'2ch'),
(14,'ii chron'),
(14,'ii chr'),
(14,'ii ch'),
(14,'2nd chronicles'),
(14,'2nd chron'),
(14,'second chronicles'),
(14,'second chron'),
(15,'ezra'),
(15,'ezr'),
(15,'ez'),
(16,'neh'),
(16,'ne'),
(17,'est'),
(17,'esth'),
(17,'es'),
(18,'job'),
(18,'jb'),
(19,'ps'),
(19,'psalm'),
(19,'pslm'),
(19,'psa'),
(19,'psm'),
(19,'pss'),
(20,'prov'),
(20,'pro'),
(20,'prv'),
(20,'pr'),
(21,'eccles'),
(21,'eccle'),
(21,'ecc'),
(21,'ec'),
(21,'qoh'),
(22,'song'),
(22,'song of songs'),
(22,'sos'),
(22,'so'),
(22,'canticle of canticles'),
(22,'canticles'),
(22,'cant'),
(23,'isa'),
(23,'is'),
(24,'jer'),
(24,'je'),
(24,'jr'),
(25,'lam'),
(25,'la'),
(26,'ezek'),
(26,'eze'),
(26,'ezk'),
(27,'dan'),
(27,'da'),
(27,'dn'),
(28,'hos'),
(28,'ho'),
(29,'jl'),
(30,'am'),
(31,'obad'),
(31,'ob'),
(32,'jnh'),
(32,'jon'),
(33,'mic'),
(33,'mc'),
(34,'nah'),
(34,'na'),
(35,'hab'),
(35,'hb'),
(36,'zeph'),
(36,'zep'),
(36,'zp'),
(37,'hag'),
(37,'hg'),
(38,'zech'),
(38,'zec'),
(38,'zc'),
(39,'mal'),
(39,'ml'),
(40,'matt'),
(40,'mt'),
(41,'mrk'),
(41,'mar'),
(41,'mk'),
(41,'mr'),
(42,'luk'),
(42,'lk'),
(43,'joh'),
(43,'jhn'),
(43,'jn'),
(44,'act'),
(44,'ac'),
(45,'rom'),
(45,'ro'),
(45,'rm'),
(46,'1 cor'),
(46,'1 co'),
(46,'i cor'),
(46,'i co'),
(46,'1cor'),
(46,'1co'),
(46,'i corinthians'),
(46,'1corinthians'),
(46,'1st corinthians'),
(47,'2nd corinthians'),
(47,'2 cor'),
(47,'2 co'),
(47,'ii cor'),
(47,'ii co'),
(47,'2cor'),
(47,'2co'),
(47,'ii corinthians'),
(47,'2corinthians'),
(47,'2nd corinthians'),
(47,'second corinthians'),
(48,'gal'),
(48,'ga'),
(49,'eph'),
(49,'ephes'),
(50,'phil'),
(50,'php'),
(50,'pp'),
(51,'col'),
(51,'co'),
(52,'1 thess'),
(52,'1 thes'),
(52,'1 th'),
(52,'i thessalonians'),
(52,'i thess'),
(52,'i thes'),
(52,'i th'),
(52,'1thessalonians'),
(52,'1thess'),
(52,'1thes'),
(52,'1th'),
(52,'1st thessalonians'),
(52,'1st thess'),
(52,'first thessalonians'),
(52,'first thess'),
(53,'2 thess'),
(53,'2 thes2 th'),
(53,'ii thessalonians'),
(53,'ii thess'),
(53,'ii thes'),
(53,'ii th'),
(53,'2thessalonians'),
(53,'2thess'),
(53,'2thes'),
(53,'2th'),
(53,'2nd thessalonians'),
(53,'2nd thess'),
(53,'second thessalonians'),
(53,'second thess'),
(54,'1 tim'),
(54,'1 ti'),
(54,'i timothy'),
(54,'i tim'),
(54,'i ti'),
(54,'1timothy'),
(54,'1tim'),
(54,'1ti'),
(54,'1st timothy'),
(54,'1st tim'),
(54,'first timothy'),
(54,'first tim'),
(55,'2 tim'),
(55,'2 ti'),
(55,'ii timothy'),
(55,'ii tim'),
(55,'ii ti'),
(55,'2timothy'),
(55,'2tim'),
(55,'2ti'),
(55,'2nd timothy'),
(55,'2nd tim'),
(55,'second timothy'),
(55,'second tim'),
(56,'titus'),
(56,'tit'),
(56,'ti'),
(57,'philem'),
(57,'phm'),
(57,'pm'),
(58,'heb'),
(59,'jas'),
(59,'jm'),
(60,'1 pet'),
(60,'1 pe'),
(60,'1 pt'),
(60,'1 p'),
(60,'i pet'),
(60,'i pt'),
(60,'i pe'),
(60,'1peter'),
(60,'1pet'),
(60,'1pe'),
(60,'1pt'),
(60,'1p'),
(60,'i peter'),
(60,'1st peter'),
(60,'first peter'),
(61,'2 pet'),
(61,'2 pe'),
(61,'2 pt'),
(61,'2 p'),
(61,'ii peter'),
(61,'ii pet'),
(61,'ii pt'),
(61,'ii pe'),
(61,'2peter'),
(61,'2pet'),
(61,'2pe'),
(61,'2pt'),
(61,'2p'),
(61,'2nd peter'),
(61,'second peter'),
(62,'1 jhn'),
(62,'1 jn'),
(62,'1 j'),
(62,'1john'),
(62,'1jhn'),
(62,'1joh'),
(62,'1jn'),
(62,'1jo'),
(62,'1j'),
(62,'i john'),
(62,'i jhn'),
(62,'i joh'),
(62,'i jn'),
(62,'i jo'),
(62,'1st john'),
(62,'first john'),
(63,'2 jhn'),
(63,'2 jn'),
(63,'2 j'),
(63,'2john'),
(63,'2jhn'),
(63,'2joh'),
(63,'2jn'),
(63,'2jo'),
(63,'2j'),
(63,'ii john'),
(63,'ii jhn'),
(63,'ii joh'),
(63,'ii jn'),
(63,'ii jo'),
(63,'2nd john'),
(63,'second john'),
(64,'3 jhn'),
(64,'3 jn'),
(64,'3 j'),
(64,'3john'),
(64,'3jhn'),
(64,'3joh'),
(64,'3jn'),
(64,'3jo'),
(64,'3j'),
(64,'iii john'),
(64,'iii jhn'),
(64,'iii joh'),
(64,'iii jn'),
(64,'iii jo'),
(64,'3rd john'),
(64,'third john'),
(65,'jud'),
(65,'jd'),
(66,'rev'),
(66,'re'),
(66,'the revelation');
