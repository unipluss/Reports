NB : det ser ut til at leiebolig har norsk database, dermed må sorteringen skje med norske bokstaver.
Dersom man ikke har norsk database, så vil plasseringen av kostander ikke vises på slutten

Det er 3 typer eierrapporter:
- Den orginale eierraporten som var en kopi av Leieboligs gamle rapport. 
	Denne ble brukt vår/sommer 2012 til eieravregning. Dette er en .dll rapport
	Pga av mye feil, og komplisert sql, ble denne bytte ut med en ny rapport. 
	Disse rapportene blir ikke oppdatert mer.
	"EierRapportMdRapport" og "EierRapportMdRapport_jobbnr"
- Den ny rapporten
	Her er all sql gjort i rapporten. Denne er den som blir sendt til eierene i dag.
	Ved feilretting/oppdatering må begge rapportene oppdateres/vedlikeholdes
	Benytter i hovedsak tabellen t_husleieavregning
	"nyEierrapport" og "nyEierrapportJobbNr"
-Årsrapport
	Lister opp en årsoversikt til utbetalingene til eieren
	Ved feilretting/oppdatering må begge rapportene oppdateres/vedlikeholdes.
	Benytter i hovedsak tabellen t_husleieavregning	
	"BTeierAarsRapport" og "eierAarsRapport"
	BTeierAarsRapport er laget for å kunne vise rapporten via Boligtorget

Rapportene med jobbnr tar inn eieravregningsjobbnummeret som parameter. De andre benytter eiernr
