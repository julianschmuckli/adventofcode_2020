TYPES: BEGIN OF t_input,
         row TYPE string,
       END OF t_input.

* Input declaration
DATA: lv_input TYPE TABLE OF t_input,
      wa_input LIKE LINE OF lv_input.

* Assign with the puzzle input.
lv_input = VALUE #(
 ( row = '33' )
 ( row = '18' )
 ( row = '22' )
 ( row = '44' )
 ( row = '49' )
 ( row = '15' )
 ( row = '12' )
 ( row = '38' )
 ( row = '41' )
 ( row = '46' )
 ( row = '3' )
 ( row = '42' )
 ( row = '37' )
 ( row = '19' )
 ( row = '13' )
 ( row = '7' )
 ( row = '21' )
 ( row = '29' )
 ( row = '34' )
 ( row = '40' )
 ( row = '39' )
 ( row = '35' )
 ( row = '27' )
 ( row = '25' )
 ( row = '48' )
 ( row = '87' )
 ( row = '10' )
 ( row = '16' )
 ( row = '17' )
 ( row = '45' )
 ( row = '18' )
 ( row = '30' )
 ( row = '20' )
 ( row = '22' )
 ( row = '23' )
 ( row = '73' )
 ( row = '24' )
 ( row = '26' )
 ( row = '28' )
 ( row = '53' )
 ( row = '31' )
 ( row = '37' )
 ( row = '51' )
 ( row = '32' )
 ( row = '33' )
 ( row = '34' )
 ( row = '36' )
 ( row = '35' )
 ( row = '54' )
 ( row = '27' )
 ( row = '38' )
 ( row = '39' )
 ( row = '40' )
 ( row = '74' )
 ( row = '70' )
 ( row = '41' )
 ( row = '93' )
 ( row = '144' )
 ( row = '45' )
 ( row = '63' )
 ( row = '87' )
 ( row = '66' )
 ( row = '65' )
 ( row = '55' )
 ( row = '58' )
 ( row = '62' )
 ( row = '72' )
 ( row = '105' )
 ( row = '59' )
 ( row = '76' )
 ( row = '61' )
 ( row = '67' )
 ( row = '68' )
 ( row = '77' )
 ( row = '106' )
 ( row = '78' )
 ( row = '79' )
 ( row = '183' )
 ( row = '86' )
 ( row = '117' )
 ( row = '96' )
 ( row = '100' )
 ( row = '108' )
 ( row = '104' )
 ( row = '123' )
 ( row = '113' )
 ( row = '114' )
 ( row = '116' )
 ( row = '129' )
 ( row = '119' )
 ( row = '178' )
 ( row = '120' )
 ( row = '196' )
 ( row = '126' )
 ( row = '177' )
 ( row = '184' )
 ( row = '135' )
 ( row = '182' )
 ( row = '192' )
 ( row = '201' )
 ( row = '174' )
 ( row = '360' )
 ( row = '186' )
 ( row = '190' )
 ( row = '210' )
 ( row = '248' )
 ( row = '214' )
 ( row = '282' )
 ( row = '217' )
 ( row = '227' )
 ( row = '229' )
 ( row = '304' )
 ( row = '235' )
 ( row = '370' )
 ( row = '308' )
 ( row = '261' )
 ( row = '302' )
 ( row = '300' )
 ( row = '542' )
 ( row = '376' )
 ( row = '309' )
 ( row = '317' )
 ( row = '356' )
 ( row = '364' )
 ( row = '375' )
 ( row = '407' )
 ( row = '396' )
 ( row = '400' )
 ( row = '404' )
 ( row = '585' )
 ( row = '599' )
 ( row = '514' )
 ( row = '444' )
 ( row = '907' )
 ( row = '456' )
 ( row = '633' )
 ( row = '687' )
 ( row = '496' )
 ( row = '665' )
 ( row = '561' )
 ( row = '563' )
 ( row = '832' )
 ( row = '1056' )
 ( row = '626' )
 ( row = '673' )
 ( row = '681' )
 ( row = '720' )
 ( row = '731' )
 ( row = '840' )
 ( row = '819' )
 ( row = '796' )
 ( row = '800' )
 ( row = '1033' )
 ( row = '1117' )
 ( row = '900' )
 ( row = '958' )
 ( row = '940' )
 ( row = '952' )
 ( row = '1017' )
 ( row = '1019' )
 ( row = '1748' )
 ( row = '1177' )
 ( row = '1422' )
 ( row = '1124' )
 ( row = '1578' )
 ( row = '1189' )
 ( row = '1299' )
 ( row = '1678' )
 ( row = '1307' )
 ( row = '1354' )
 ( row = '2702' )
 ( row = '2476' )
 ( row = '1689' )
 ( row = '3775' )
 ( row = '1740' )
 ( row = '2813' )
 ( row = '2706' )
 ( row = '1977' )
 ( row = '1898' )
 ( row = '1840' )
 ( row = '2630' )
 ( row = '2864' )
 ( row = '1971' )
 ( row = '2439' )
 ( row = '2143' )
 ( row = '2932' )
 ( row = '2301' )
 ( row = '2313' )
 ( row = '2423' )
 ( row = '2488' )
 ( row = '2496' )
 ( row = '3194' )
 ( row = '2661' )
 ( row = '2996' )
 ( row = '3043' )
 ( row = '4416' )
 ( row = '3429' )
 ( row = '3529' )
 ( row = '3580' )
 ( row = '3638' )
 ( row = '3738' )
 ( row = '3983' )
 ( row = '4830' )
 ( row = '3811' )
 ( row = '4114' )
 ( row = '4724' )
 ( row = '5782' )
 ( row = '4394' )
 ( row = '4444' )
 ( row = '7143' )
 ( row = '6623' )
 ( row = '6882' )
 ( row = '7267' )
 ( row = '5149' )
 ( row = '7823' )
 ( row = '5855' )
 ( row = '5657' )
 ( row = '5704' )
 ( row = '6425' )
 ( row = '7026' )
 ( row = '6958' )
 ( row = '9666' )
 ( row = '7109' )
 ( row = '7218' )
 ( row = '10249' )
 ( row = '8535' )
 ( row = '7794' )
 ( row = '11512' )
 ( row = '14327' )
 ( row = '9969' )
 ( row = '15906' )
 ( row = '8838' )
 ( row = '10101' )
 ( row = '9593' )
 ( row = '12082' )
 ( row = '10806' )
 ( row = '10853' )
 ( row = '13451' )
 ( row = '17489' )
 ( row = '13073' )
 ( row = '11361' )
 ( row = '12129' )
 ( row = '17210' )
 ( row = '13383' )
 ( row = '13984' )
 ( row = '30562' )
 ( row = '16329' )
 ( row = '14903' )
 ( row = '15753' )
 ( row = '19306' )
 ( row = '16632' )
 ( row = '23920' )
 ( row = '26456' )
 ( row = '26113' )
 ( row = '18431' )
 ( row = '27032' )
 ( row = '19644' )
 ( row = '27882' )
 ( row = '20399' )
 ( row = '37885' )
 ( row = '21659' )
 ( row = '27976' )
 ( row = '24812' )
 ( row = '23490' )
 ( row = '24744' )
 ( row = '25345' )
 ( row = '25512' )
 ( row = '42785' )
 ( row = '27367' )
 ( row = '29737' )
 ( row = '30656' )
 ( row = '45579' )
 ( row = '31535' )
 ( row = '32385' )
 ( row = '35063' )
 ( row = '52788' )
 ( row = '38075' )
 ( row = '38830' )
 ( row = '44544' )
 ( row = '40090' )
 ( row = '40043' )
 ( row = '55249' )
 ( row = '57897' )
 ( row = '42058' )
 ( row = '45149' )
 ( row = '52712' )
 ( row = '48234' )
 ( row = '48302' )
 ( row = '72946' )
 ( row = '50089' )
 ( row = '64342' )
 ( row = '52879' )
 ( row = '103551' )
 ( row = '57104' )
 ( row = '72428' )
 ( row = '62191' )
 ( row = '79837' )
 ( row = '63920' )
 ( row = '71215' )
 ( row = '73138' )
 ( row = '80133' )
 ( row = '84587' )
 ( row = '82148' )
 ( row = '156430' )
 ( row = '90132' )
 ( row = '152323' )
 ( row = '113146' )
 ( row = '90360' )
 ( row = '197733' )
 ( row = '100946' )
 ( row = '105591' )
 ( row = '101113' )
 ( row = '98391' )
 ( row = '288093' )
 ( row = '154280' )
 ( row = '109983' )
 ( row = '204497' )
 ( row = '164424' )
 ( row = '152975' )
 ( row = '137058' )
 ( row = '126111' )
 ( row = '191473' )
 ( row = '181079' )
 ( row = '144353' )
 ( row = '153271' )
 ( row = '170265' )
 ( row = '166735' )
 ( row = '183261' )
 ( row = '180492' )
 ( row = '188523' )
 ( row = '236094' )
 ( row = '235449' )
 ( row = '188751' )
 ( row = '202059' )
 ( row = '262815' )
 ( row = '305610' )
 ( row = '199504' )
 ( row = '208374' )
 ( row = '247041' )
 ( row = '312042' )
 ( row = '254336' )
 ( row = '440591' )
 ( row = '353175' )
 ( row = '442859' )
 ( row = '263169' )
 ( row = '270464' )
 ( row = '616344' )
 ( row = '297624' )
 ( row = '311088' )
 ( row = '320006' )
 ( row = '402829' )
 ( row = '377274' )
 ( row = '363753' )
 ( row = '369015' )
 ( row = '501377' )
 ( row = '388255' )
 ( row = '390810' )
 ( row = '397125' )
 ( row = '401563' )
 ( row = '407878' )
 ( row = '446545' )
 ( row = '455415' )
 ( row = '471543' )
 ( row = '732768' )
 ( row = '524800' )
 ( row = '751679' )
 ( row = '1043856' )
 ( row = '533633' )
 ( row = '626922' )
 ( row = '568088' )
 ( row = '581552' )
 ( row = '608712' )
 ( row = '699343' )
 ( row = '631094' )
 ( row = '697280' )
 ( row = '779065' )
 ( row = '926958' )
 ( row = '921925' )
 ( row = '868668' )
 ( row = '785380' )
 ( row = '969651' )
 ( row = '856978' )
 ( row = '798688' )
 ( row = '809441' )
 ( row = '989430' )
 ( row = '901960' )
 ( row = '1036967' )
 ( row = '996343' )
 ( row = '1285312' )
 ( row = '1133512' )
 ( row = '1101721' )
 ( row = '1195010' )
 ( row = '1115185' )
 ( row = '1149640' )
 ( row = '1330437' )
 ( row = '1911355' )
 ( row = '1239806' )
 ( row = '1328374' )
 ( row = '1912577' )
 ( row = '1476345' )
 ( row = '3239729' )
 ( row = '1654048' )
 ( row = '1655666' )
 ( row = '1594821' )
 ( row = '1584068' )
 ( row = '1608129' )
 ( row = '1758938' )
 ( row = '1700648' )
 ( row = '1711401' )
 ( row = '2365341' )
 ( row = '1898303' )
 ( row = '2895658' )
 ( row = '2098064' )
 ( row = '2216906' )
 ( row = '4654596' )
 ( row = '3293074' )
 ( row = '2769233' )
 ( row = '2354991' )
 ( row = '3039775' )
 ( row = '2834627' )
 ( row = '3238116' )
 ( row = '3810880' )
 ( row = '3132011' )
 ( row = '3060413' )
 ( row = '3178889' )
 ( row = '3284716' )
 ( row = '3192197' )
 ( row = '3202950' )
 ( row = '3295469' )
 ( row = '4253294' )
 ( row = '3928307' )
 ( row = '3412049' )
 ( row = '4720332' )
 ( row = '4993722' )
 ( row = '4867297' )
 ( row = '3996367' )
 ( row = '4571897' )
 ( row = '8152013' )
 ( row = '4986139' )
 ( row = '5124224' )
 ( row = '5189618' )
 ( row = '6472462' )
 ( row = '5394766' )
 ( row = '5874402' )
 ( row = '5895040' )
 ( row = '7003077' )
 ( row = '6192424' )
 ( row = '7385305' )
 ( row = '8181601' )
 ( row = '6476913' )
 ( row = '6395147' )
 ( row = '6487666' )
 ( row = '8716699' )
 ( row = '6707518' )
 ( row = '7408416' )
 ( row = '8398188' )
 ( row = '7983946' )
 ( row = '8568264' )
 ( row = '8863664' )
 ( row = '8982506' )
 ( row = '9120591' )
 ( row = '13184431' )
 ( row = '10860541' )
 ( row = '10110363' )
 ( row = '10313842' )
 ( row = '10584384' )
 ( row = '11289806' )
 ( row = '15470172' )
 ( row = '11769442' )
 ( row = '12382706' )
 ( row = '16579789' )
 ( row = '15056088' )
 ( row = '12872060' )
 ( row = '13896082' )
 ( row = '12964579' )
 ( row = '13102665' )
 ( row = '25185888' )
 ( row = '24474237' )
 ( row = '14115934' )
 ( row = '20633106' )
 ( row = '16382134' )
 ( row = '16552210' )
 ( row = '23098440' )
 ( row = '19092869' )
 ( row = '18103097' )
 ( row = '24209924' )
 ( row = '24392471' )
 ( row = '27842016' )
 ( row = '24254385' )
 ( row = '28687481' )
 ( row = '24152148' )
 ( row = '23059248' )
 ( row = '38150467' )
 ( row = '24641502' )
 ( row = '25347285' )
 ( row = '25836639' )
 ( row = '42357482' )
 ( row = '36023827' )
 ( row = '26067244' )
 ( row = '27080513' )
 ( row = '35645079' )
 ( row = '49033973' )
 ( row = '30498068' )
 ( row = '39463219' )
 ( row = '42619454' )
 ( row = '32934344' )
 ( row = '34655307' )
 ( row = '29221323' )
 ( row = '37195966' )
 ( row = '60665329' )
 ( row = '62725592' )
 ( row = '47313633' )
 ( row = '50901264' )
 ( row = '47211396' )
 ( row = '82958712' )
 ( row = '47700750' )
 ( row = '48406533' )
 ( row = '49988787' )
 ( row = '50708746' )
 ( row = '51183924' )
 ( row = '51903883' )
 ( row = '53147757' )
 ( row = '88497192' )
 ( row = '77789259' )
 ( row = '56301836' )
 ( row = '86546343' )
 ( row = '67694034' )
 ( row = '59719391' )
 ( row = '70130310' )
 ( row = '81340877' )
 ( row = '101892670' )
 ( row = '63876630' )
 ( row = '66417289' )
 ( row = '84407362' )
 ( row = '96107283' )
 ( row = '94525029' )
 ( row = '146096070' )
 ( row = '94912146' )
 ( row = '95617929' )
 ( row = '103087807' )
 ( row = '101554290' )
 ( row = '180025291' )
 ( row = '103136544' )
 ( row = '102612629' )
 ( row = '110903315' )
 ( row = '105051640' )
 ( row = '109449593' )
 ( row = '116021227' )
 ( row = '120178466' )
 ( row = '122719125' )
 ( row = '178932391' )
 ( row = '197661573' )
 ( row = '123596021' )
 ( row = '167971579' )
 ( row = '130293919' )
 ( row = '283113098' )
 ( row = '199576669' )
 ( row = '245349680' )
 ( row = '199243827' )
 ( row = '189437175' )
 ( row = '213515944' )
 ( row = '190530075' )
 ( row = '196466436' )
 ( row = '197172219' )
 ( row = '233045614' )
 ( row = '390106744' )
 ( row = '223315010' )
 ( row = '225331754' )
 ( row = '207664269' )
 ( row = '214501233' )
 ( row = '396748888' )
 ( row = '225470820' )
 ( row = '291567600' )
 ( row = '312156300' )
 ( row = '478395294' )
 ( row = '343809863' )
 ( row = '253889940' )
 ( row = '298265498' )
 ( row = '509328519' )
 ( row = '319731094' )
 ( row = '472550273' )
 ( row = '379967250' )
 ( row = '385903611' )
 ( row = '386609394' )
 ( row = '479221694' )
 ( row = '711440908' )
 ( row = '545201914' )
 ( row = '393638655' )
 ( row = '629794502' )
 ( row = '422165502' )
 ( row = '439972053' )
 ( row = '680214542' )
 ( row = '461554209' )
 ( row = '433135089' )
 ( row = '468391173' )
 ( row = '1024423608' )
 ( row = '479360760' )
 ( row = '545457540' )
 ( row = '552155438' )
 ( row = '854294784' )
 ( row = '573621034' )
 ( row = '617996592' )
 ( row = '678232748' )
 ( row = '705634705' )
 ( row = '699698344' )
 ( row = '938840569' )
 ( row = '773605905' )
 ( row = '772513005' )
 ( row = '780248049' )
 ( row = '815804157' )
 ( row = '1170152030' )
 ( row = '826773744' )
 ( row = '855192864' )
 ( row = '1418201329' )
 ( row = '862137555' )
 ( row = '1794033433' )
 ( row = '1024818300' )
 ( row = '894689298' )
 ( row = '1051131681' )
 ( row = '1163454132' )
 ( row = '1031516198' )
 ( row = '1052981794' )
 ( row = '1119078574' )
 ( row = '1125776472' )
 ( row = '1191617626' )
 ( row = '1450745753' )
 ( row = '1485882754' )
 ( row = '1377931092' )
 ( row = '1405333049' )
 ( row = '1472211349' )
 ( row = '2266130803' )
 ( row = '1546118910' )
 ( row = '1552761054' )
 ( row = '2576522225' )
 ( row = '1642577901' )
 ( row = '1717330419' )
 ( row = '1681966608' )
 ( row = '1749882162' )
 ( row = '2300022347' )
 ( row = '1886955855' )
 ( row = '2216435926' )
 ( row = '1919507598' )
 ( row = '2242749307' )
 ( row = '2084497992' )
 ( row = '2150594772' )
 ( row = '2157292670' )
 ( row = '2172060368' )
 ( row = '2244855046' )
 ( row = '2317394098' )
 ( row = '2569548718' )
 ( row = '2891215803' )
 ( row = '2783264141' )
 ( row = '2850142441' )
 ( row = '2877544398' )
 ( row = '3762554836' )
 ( row = '3098879964' )
 ( row = '4533830024' )
 ( row = '3195338955' )
 ( row = '4384520339' )
 ( row = '5066578367' )
 ( row = '3399297027' )
 ( row = '3568922463' )
 ( row = '3636838017' )
 ( row = '8170668041' )
 ( row = '6514382415' )
 ( row = '4373728596' )
 ( row = '4467988870' )
 ( row = '4322655140' )
 ( row = '6446466861' )
 ( row = '4307887442' )
 ( row = '5674479944' )
 ( row = '4416915414' )
 ( row = '7406767406' )
 ( row = '5100658239' )
 ( row = '5352812859' )
 ( row = '5978603096' )
 ( row = '7105919281' )
 ( row = '6498176991' )
 ( row = '8669580702' )
 ( row = '6294218919' )
 ( row = '6735717981' )
 ( row = '11048212439' )
 ( row = '8021358356' )
 ( row = '6968219490' )
 ( row = '11573908151' )
 ( row = '7036135044' )
 ( row = '7205760480' )
 ( row = '7944725459' )
 ( row = '9423313379' )
 ( row = '8630542582' )
 ( row = '8790644010' )
 ( row = '17868127070' )
 ( row = '8724802856' )
 ( row = '9408545681' )
 ( row = '9982367386' )
 ( row = '10453471098' )
 ( row = '9517573653' )
 ( row = '11079261335' )
 ( row = '12792395910' )
 ( row = '18253972919' )
 ( row = '12272822015' )
 ( row = '13400138200' )
 ( row = '13233894972' )
 ( row = '13029936900' )
 ( row = '13262438409' )
 ( row = '14912944949' )
 ( row = '14004354534' )
 ( row = '27677286298' )
 ( row = '17188127866' )
 ( row = '20436273244' )
 ( row = '14241895524' )
 ( row = '21790395668' )
 ( row = '20502574714' )
 ( row = '17421186592' )
 ( row = '19499941039' )
 ( row = '17515446866' )
 ( row = '25912930722' )
 ( row = '23687366070' )
 ( row = '18926119334' )
 ( row = '20435838484' )
 ( row = '25672960215' )
 ( row = '24109198235' )
 ( row = '44865414164' )
 ( row = '25065217925' )
 ( row = '25302758915' )
 ( row = '25506716987' )
 ( row = '26263831872' )
 ( row = '30683625001' )
 ( row = '27034291434' )
 ( row = '27504333933' )
 ( row = '28246250058' )
 ( row = '31192482400' )
 ( row = '48104811593' )
 ( row = '36921127631' )
 ( row = '33168014858' )
 ( row = '31663082116' )
 ( row = '42486404517' )
 ( row = '34936633458' )
 ( row = '43188407081' )
 ( row = '50683461724' )
 ( row = '36441566200' )
 ( row = '43991337259' )
 ( row = '81786541795' )
 ( row = '39361957818' )
 ( row = '44545036719' )
 ( row = '49174416160' )
 ( row = '49411957150' )
 ( row = '61876107401' )
 ( row = '50367976840' )
 ( row = '53549008973' )
 ( row = '51770548859' )
 ( row = '53298123306' )
 ( row = '54538625367' )
 ( row = '55280541492' )
 ( row = '59909332174' )
 ( row = '84348590608' )
 ( row = '87706640225' )
 ( row = '64831096974' )
 ( row = '82346543840' )
 ( row = '71025039934' )
 ( row = '66599715574' )
 ( row = '71378199658' )
 ( row = '126331578514' )
 ( row = '75803524018' )
 ( row = '121746176498' )
 ( row = '93956993869' )
 ( row = '115923236377' )
 ( row = '89729934658' )
 ( row = '83906994537' )
 ( row = '93719452879' )
 ( row = '143131410029' )
 ( row = '99779933990' )
 ( row = '102138525699' )
 ( row = '136119139467' )
 ( row = '125563665301' )
 ( row = '106309174226' )
 ( row = '107836748673' )
 ( row = '109819166859' )
 ( row = '115189873666' )
 ( row = '126509047748' )
 ( row = '185622690877' )
 ( row = '147177640814' )
 ( row = '131430812548' )
 ( row = '287761216576' )
 ( row = '137624755508' )
 ( row = '192931294088' )
 ( row = '165533458676' )
 ( row = '159710518555' )
 ( row = '177626447416' )
 ( row = '201793742542' )
 ( row = '173636929195' )
 ( row = '183449387537' )
 ( row = '183686928527' )
 ( row = '186045520236' )
 ( row = '193499386869' )
 ( row = '206089108216' )
 ( row = '217655915532' )
 ( row = '208447699925' )
 ( row = '407882850758' )
 ( row = '423745023748' )
 ( row = '232818221974' )
 ( row = '239267561221' )
 ( row = '300145976943' )
 ( row = '241698921414' )
 ( row = '314880200085' )
 ( row = '269055568056' )
 ( row = '330627028351' )
 ( row = '291141331103' )
 ( row = '353209905424' )
 ( row = '343159906092' )
 ( row = '392134628452' )
 ( row = '325243977231' )
 ( row = '351263376611' )
 ( row = '363671967652' )
 ( row = '357086316732' )
 ( row = '416505150501' )
 ( row = '367136316064' )
 ( row = '399588495085' )
 ( row = '394493220161' )
 ( row = '745756596772' )
 ( row = '414536808141' )
 ( row = '426103615457' )
 ( row = '441265921899' )
 ( row = '472085783195' )
 ( row = '584858827506' )
 ( row = '474517143388' )
 ( row = '592477466645' )
 ( row = '709373420246' )
 ( row = '510754489470' )
 ( row = '783641466565' )
 ( row = '560196899159' )
 ( row = '841653459452' )
 ( row = '616385308334' )
 ( row = '694423282703' )
 ( row = '719737197392' )
 ( row = '676507353842' )
 ( row = '886622591336' )
 ( row = '720758284384' )
 ( row = '724222632796' )
 ( row = '1071000574003' )
 ( row = '810998370662' )
 ( row = '1010962442963' )
 ( row = '794081715246' )
 ( row = '1208618523387' )
 ( row = '1150639342145' )
 ( row = '1001462821058' )
 ( row = '867369537356' )
 ( row = '915783065287' )
 ( row = '946602926583' )
 ( row = '985271632858' )
 ( row = '1034714042547' )
 ( row = '1176582207493' )
 ( row = '1070951388629' )
 ( row = '1127139797804' )
 ( row = '1587106734748' )
 ( row = '1812461191720' )
 ( row = '2502889800035' )
 ( row = '1292892662176' )
 ( row = '1370930636545' )
 ( row = '1396244551234' )
 ( row = '1607380875720' )
 ( row = '3537603842582' )
 ( row = '1444980917180' )
 ( row = '1795174021425' )
 ( row = '1938370111359' )
 ( row = '1661451252602' )
 ( row = '1709864780533' )
 ( row = '2086974377422' )
 ( row = '1950497107834' )
 ( row = '1813972463939' )
 ( row = '1783152602643' )
 ( row = '2105665431176' )
 ( row = '1986734453916' )
 ( row = '1931874559441' )
 ( row = '2019985675405' )
 ( row = '3108456766934' )
 ( row = '2198091186433' )
 ( row = '2788591050406' )
 ( row = '2420032459980' )
 ( row = '2689137213410' )
 ( row = '3769887056559' )
 ( row = '4136461297792' )
 ( row = '2663823298721' )
 ( row = '2767175187779' )
 ( row = '3003625426954' )
 ( row = '4056162539010' )
 ( row = '3106432169782' )
 ( row = '3228133519823' )
 ( row = '3371316033135' )
 ( row = '3733649710477' )
 ( row = '4887228399843' )
 ( row = '3493017383176' )
 ( row = '3597125066582' )
 ( row = '5109290858130' )
 ( row = '3803138278048' )
 ( row = '5917270733233' )
 ( row = '4125651106581' )
 ( row = '3951860234846' )
 ( row = '4129965745874' )
 ( row = '4218076861838' )
 ( row = '4618123646413' )
 ( row = '4861914485154' )
 ( row = '5109169673390' )
 ( row = '7773114156851' )
 ( row = '6156840681897' )
 ( row = '6840081880259' )
 ( row = '5430998486500' )
 ( row = '5667448725675' )
 ( row = '6500824898256' )
 ( row = '6110057596736' )
 ( row = '6721150902999' )
 ( row = '10235708703317' )
 ( row = '7446210381661' )
 ( row = '6968441099717' )
 ( row = '7090142449758' )
 ( row = '8743774752994' )
 ( row = '7296155661224' )
 ( row = '7400263344630' )
 ( row = '8912307951438' )
 ( row = '8665052763202' )
 ( row = '8077511341427' )
 ( row = '8081825980720' )
 ( row = '9079991346992' )
 ( row = '15069148633335' )
 ( row = '10374917543735' )
 ( row = '13510320941366' )
 ( row = '9971084158544' )
 ( row = '11219227270126' )
 ( row = '14917593221686' )
 ( row = '12271080366759' )
 ( row = '11098447212175' )
 ( row = '12168273623931' )
 ( row = '11777506322411' )
 ( row = '12610882494992' )
 ( row = '12831208499735' )
 ( row = '13689592002716' )
 ( row = '14058583549475' )
 ( row = '14264596760941' )
 ( row = '14368704444347' )
 ( row = '14386298110982' )
 ( row = '14696419005854' )
 ( row = '23369527578934' )
 ( row = '20231471844365' )
 ( row = '16159337322147' )
 ( row = '24824390085349' )
 ( row = '25915646275980' )
 ( row = '26997180605974' )
 ( row = '25678594565297' )
 ( row = '22242164525303' )
 ( row = '22802292658279' )
 ( row = '22139357782475' )
 ( row = '21069531370719' )
 ( row = '22317674482301' )
 ( row = '22875953534586' )
 ( row = '25442090994727' )
 ( row = '28961015766795' )
 ( row = '25836089871886' )
 ( row = '26042103083352' )
 ( row = '26300474497708' )
 ( row = '40284350720327' )
 ( row = '28755002555329' )
 ( row = '28323180310416' )
 ( row = '35334128131660' )
 ( row = '51203180292098' )
 ( row = '36525655893457' )
 ( row = '45044457183582' )
 ( row = '45193628016887' )
 ( row = '36390809166512' )
 ( row = '42074983598127' )
 ( row = '48153764354187' )
 ( row = '43311695896022' )
 ( row = '49176428032294' )
 ( row = '43208889153194' )
 ( row = '43387205853020' )
 ( row = '43871824028998' )
 ( row = '44457032264776' )
 ( row = '73989854226073' )
 ( row = '47759765477028' )
 ( row = '48318044529313' )
 ( row = '51278180866613' )
 ( row = '54591092427215' )
 ( row = '69044979025080' )
 ( row = '52342577581060' )
 ( row = '54623654808124' )
 ( row = '57078182865745' )
 ( row = '76082945787444' )
 ( row = '92610796618963' )
 ( row = '71724937298172' )
 ( row = '72916465059969' )
 ( row = '78465792764639' )
 ( row = '79599698319706' )
 ( row = '81584437183399' )
 ( row = '79702505062534' )
 ( row = '122092893092263' )
 ( row = '86596095006214' )
 ( row = '86520585049216' )
 ( row = '87080713182192' )
 ( row = '96799609845836' )
 ( row = '87259029882018' )
 ( row = '99080687072900' ) ).

DATA: lv_checked TYPE abap_bool VALUE abap_false,
      lv_current_index TYPE i VALUE 0.

LOOP AT lv_input INTO wa_input.
  IF lines( lv_input ) GE ( sy-tabix + 25 ).
    lv_checked = abap_false.
    lv_current_index = sy-tabix + 25.
    READ TABLE lv_input INTO DATA(wa_cur_result) INDEX lv_current_index.

    " Go through the preamble
    DO 25 TIMES.
      DATA(lv_cur_index_a) = sy-index.
      DO 25 TIMES.
        DATA(lv_cur_index_b) = sy-index.

        READ TABLE lv_input INTO DATA(lv_number_a) INDEX lv_current_index - lv_cur_index_a.
        READ TABLE lv_input INTO DATA(lv_number_b) INDEX lv_current_index - lv_cur_index_b.

        DATA(lv_check_result) = lv_number_a-row + lv_number_b-row.

        IF lv_check_result EQ wa_cur_result-row.
          lv_checked = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF lv_checked EQ abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    IF lv_checked EQ abap_false.
      WRITE: 'Found value: ' && wa_cur_result-row.
      EXIT.
    ENDIF.
  ELSE.
    EXIT.
  ENDIF.
ENDLOOP.
