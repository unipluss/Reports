NB : det ser ut til at leiebolig har norsk database, dermed m� sorteringen skje med norske bokstaver.
Dersom man ikke har norsk database, s� vil plasseringen av kostander ikke vises p� slutten

Det er 3 typer eierrapporter:
- Den orginale eierraporten som var en kopi av Leieboligs gamle rapport. 
	Denne ble brukt v�r/sommer 2012 til eieravregning. Dette er en .dll rapport
	Pga av mye feil, og komplisert sql, ble denne bytte ut med en ny rapport. 
	Disse rapportene blir ikke oppdatert mer.
	"EierRapportMdRapport" og "EierRapportMdRapport_jobbnr"
- Den ny rapporten
	Her er all sql gjort i rapporten. Denne er den som blir sendt til eierene i dag.
	Ved feilretting/oppdatering m� begge rapportene oppdateres/vedlikeholdes
	Benytter i hovedsak tabellen t_husleieavregning
	"nyEierrapport" og "nyEierrapportJobbNr"
-�rsrapport
	Lister opp en �rsoversikt til utbetalingene til eieren
	Ved feilretting/oppdatering m� begge rapportene oppdateres/vedlikeholdes.
	Benytter i hovedsak tabellen t_husleieavregning	
	"BTeierAarsRapport" og "eierAarsRapport"
	BTeierAarsRapport er laget for � kunne vise rapporten via Boligtorget

Rapportene med jobbnr tar inn eieravregningsjobbnummeret som parameter. De andre benytter eiernr
