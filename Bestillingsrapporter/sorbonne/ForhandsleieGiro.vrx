[Rapport]
kilde=DB
sql=select objekt,kontrakts_id,kundenummer from t_kontraktsdata where Kontrakts_ID={§SKND}
sql2=select BO.Omrade, BO1.BoligType, DE.Pris from ((t_kontraktsdata as KO INNER JOIN t_boligomraade as BO on KO.tildeltOmrade_id=BO.Boligomrade_id) INNER JOIN t_boligtype as BO1 on KO.tildelt_boligtype=BO1.BoligType_id) LEFT JOIN t_depPriser as DE on KO.tildelt_boligtype=DE.Boligtype and KO.tildeltOmrade_id=DE.Omrade where kontrakts_id={kontrakts_id}
sql3=select name,address,address2,postal_code,city,country from v_name as V inner join c..c_address as A on V.nameid=A.namelink where kundenummer={kundenummer} order by mail,delivery
sql4=select depositum from t_kontraktsdata where kontrakts_id={kontrakts_id}
gruppe=ID
 
[Makro]
§SKND=Input,Kontraktsnummer,1
;§SluttSumOld={+sql2+pris}
§SluttSum={+sql4+depositum}
§GiroX={*t_klientparametre.Bankgiro_depositum}
§Giro1=if '{§GiroX}'='0' then "<*y..Bedrift.Bankgiro>" else "{§GiroX}"
 
[PageHeader]
&Tableborder=0
&Margintop=600,Marginbottom=720,Marginleft=720,Marginright=720
&LineSpacing=75
#14,Arial
@5295|5384|
|<*y..Bedrift.Navn>||
#9,Arial,False
@5295|2000|3428
|<*y..Bedrift.Adresse>
|<*y..Bedrift.Adresse2>|Organisasjonsnr.|NO<*y..Bedrift.Mvanr>
|<*y..Bedrift.Postnr> <*y..Bedrift.Poststed>|Bankgiro|<*y..Bedrift.Bankgiro>|
|Telefon:<*y..Bedrift.Telefon> Fax: <*y..Bedrift.Telefax>| |<*y..Bedrift.Postgiro>|
| ||
| ||
;----------------------> 
;KUNDENS NAVN OG ADRESSE
;---------------------->
&Vertikal=2475
@600|4700|3407
| | |
| |Kundenummer: <Kundenummer>|
| |<+sql3+Name>|
| |<+sql3+Address>|
| |<+sql3+Address2>|
| |<+sql3+Postal_code> <+sql3+city>|
| |<+sql3+country>
;
#9,Arial,False,italic
@600|9899
| |
;
#9,Arial,False
&Tableborder=1
#9,Arial,False,Italic
&Tableborder=0
#9,Arial,False
;
[Detail]
;=======
PageBreak=-1
Maxlinjer=19
Tabell=>1000|3319|>1488|800|>1568|>700|>1848;
Data=| | | | | | |
;
;
[GroupFooter]
;============
;&Vertikal=9050
&Tableborder=2
@10500
&Tableborder=0
#11,Arial,False
#11,Arial,True
&Vertikal=5085
#14,Arial
@^10660|
|Sikkerhet fra kunde for skade på leid rom/areale i henhold til avtalen|
#12,Arial,True,Italic
&Vertikal=5520
@^10650|
|  Bolig:|
#11,Arial
&Vertikal=5910
@3540|1334|3794
||Område:|<+sql2+omrade>
||Boligtype:|<+sql2+boligtype>
&Vertikal=10320
@3500|>2100|>3000
| | |
| | |
|<§Giro1>|<§SluttSum$>
| | |
 
@5000|3800|>1500
| | |<Forfallsdato>
#10,Arial
&Vertikal=12360
@2000|3000
| Kundenummer|<Kundenummer>
| Referanse|Sikkerhet
||
 
#10,Arial
&Vertikal=13230
@200|5700|4600
| |<+sql3+Name>|<*y..Bedrift.Navn>
| |<+sql3+Address>|<*y..Bedrift.Adresse>
| |<+sql3+Address2>|<*y..Bedrift.Adresse2>
| |<+sql3+Postal_code> <+sql3+City>|<*y..Bedrift.Postnr> <*y..Bedrift.Poststed>
| |<+sql3+coyntry>|<*y..Bedrift.Land>
&Vertikal=15040
#10,OCR-B-Digits,false
@>3400|>2280|750|3000
| | | |
| | | |
|<¤kidkunde>|<§SluttSum#>| <¤M10({§SluttSum})>| <§Giro1>
;
;
[PageFooter]
;
;
