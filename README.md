# Entwicklung einer Hydrantensuchapp für die Nutzung als Feuerwehrmann

## 1.Einleitung

Bei einem Einsatz ist eine schnelle Reaktion der Feuerwehr von entscheidender Bedeutung, um potenzielle Schäden so gering wie möglich zu halten. Dies stellt insbesondere für Freiwillige Feuerwehren eine Herausforderung dar, da die meisten Feuerwehrleute nebenbei noch einer Hauptbeschäftigung nachgehen und sich selten unmittelbar am Feuerwehrhaus aufhalten. Dies führt zu wertvollen Zeitverlusten, die über Leben und Tod oder den Unterschied zwischen einem Kleinbrand und der vollständigen Zerstörung eines Wohngebäudes entscheiden können. Auch bei der Ankunft am Einsatzort muss zunächst ein Überblick über die Situation und die Wasserversorgung gewonnen werden. Derzeit geschieht dies über einen Ordner mit verschiedenen Kartenabschnitten der Stadt oder des Dorfes. Die Suche nach dem richtigen Planquadrat und das letztendliche Auffinden des Hydranten kostet jedoch erneut wertvolle Zeit. Diese App zielt darauf ab, diese Zeit auf ein Minimum zu reduzieren und somit Leben zu retten und Schäden zu minimieren.

### 1.1 Anforderungsübersicht

Die primäre Anforderung besteht darin, eine App zur vereinfachten Suche nach Hydranten zu entwickeln, die unmittelbar die nächstgelegenen Hydranten anzeigt und auf Knopfdruck eine Navigation zu dem ausgewählten Hydranten startet. Ein zusätzliches Merkmal sollte eine Kartenübersicht sein, die es ermöglicht, weitere Hydranten zu finden, die zwar nicht die nächstgelegenen, aber für den Einsatz besser geeignet sind, beispielsweise weil der nächstgelegene Hydrant hinter Bahnschienen liegt. Die App sollte zudem so gestaltet sein, dass sie einfach und intuitiv zu bedienen ist, da die Feuerwehrleute im Einsatz unter Stress stehen und keine Zeit haben, sich ausführlich in die Nutzung der App einzuarbeiten. Darüber hinaus ist es wichtig, die Kosten so gering wie möglich zu halten, da Gemeinden trotz der inhärenten Vorteile nicht bereit sind, Geld für Apps auszugeben.

### 1.2 Qualitätsziele

Um einen Feuerwehreinsatz optimal zu unterstützen, ist es von entscheidender Bedeutung, dass die App schnell und möglichst stabil funktioniert. Abstürze und lange Ladezeiten können im Ernstfall Menschenleben gefährden, daher ist es unerlässlich, solche Probleme zu vermeiden. Darüber hinaus muss die App mit Android 10 kompatibel sein, um eine möglichst breite Nutzerbasis unter den Feuerwehrleuten zu gewährleisten und gleichzeitig die Integration neuester Sicherheitsfunktionen zu ermöglichen.

## 5. Durchführung von Laufzeittests

Die aus dem Code resultierende APK wurde auf insgesamt drei Geräten, die vier verschiedene Betriebssysteme nutzen, getestet. Der Testlauf auf dem Pixel 5 wurde jedoch ausschließlich auf einem Emulator innerhalb der Android Studio IDE durchgeführt. Das Xiaomi Poco X3 Pro wurde von einer Person getestet, die bereits mit der Anwendung der App vertraut war. Im Gegensatz dazu wurde der Testlauf auf dem Xiaomi Mi 11T von einer Person durchgeführt, die zuvor keine Erfahrung mit der App hatte. Aufgrund dieser unterschiedlichen Voraussetzungen ergeben sich drei verschiedene Testszenarien, die sich hinsichtlich ihrer Schwerpunkte erheblich voneinander unterscheiden.

### 5.1. Google Pixel 5 Android 10 und Android 13

Die Anwendung, die speziell für dieses Gerät entwickelt wurde, wies weder im Design noch in der Funktion gravierende Fehler auf. Dennoch war die Startzeit der App bemerkenswert lang. Sobald die App jedoch installiert war, arbeiteten alle Funktionen mit hoher Geschwindigkeit. Sowohl die Eingabe aller Buchstaben als auch die Lokalisierung des im Emulator eingetragenen Standortes funktionierten einwandfrei. Eine Internetverbindung zur Nutzung des OpenStreetMap Tile-Layers und der Nominatim API war ebenfalls gegeben. Es ist jedoch zu beachten, dass das Internet des Emulators nicht funktioniert, sollte das Notebook kurzzeitig keine Internetverbindung haben.

### 5.2. Xiaomi Poco X3 Pro Android 11

Der Testlauf mit dem Poco X3 Pro verlief äußerst erfolgreich. Trotz der Einschränkungen beim Sideloading konnte die APK ohne größere Schwierigkeiten installiert werden. Die Anfrage nach Standortberechtigungen wurde zügig gestellt und nach Erhalt der Zustimmung konnten alle Funktionen der App problemlos genutzt werden. Ein geringfügiges Problem trat jedoch bei der Suchleiste auf, wo der Begriff „Suche……“ innerhalb der Leiste leicht nach oben verschoben war. Dies beeinträchtigt die Nutzung nicht, sollte aber bei einer möglichen Weiterentwicklung behoben werden. Ein weiteres kleines Problem besteht darin, dass die Standortabfrage etwa 2-3 Sekunden dauert. Dies ist im Vergleich zur vorherigen Suche immer noch sehr kurz, kann aber schnell zu einer Geduldsprobe werden, wenn man im Einsatz ist. Der Fehler dürfte hier vermutlich auf die eingestellte, sehr hohe Genauigkeit zurückzuführen sein. Daraus ergibt sich das Problem, dass das optimale Gleichgewicht zwischen Genauigkeit und Geschwindigkeit noch nicht gefunden wurde.

### 5.3. Xiaomi Mi 11T Android 13

Im Unterschied zu den anderen Tests wurde dieser Test mit einer Person durchgeführt, die zuvor noch keine Erfahrung mit der App hatte. Daher lag der Fokus hier insbesondere auf der Intuitivität und Benutzerfreundlichkeit. Zudem ermöglichte dieser Ansatz die Identifizierung weiterer Fehler, da eine potenzielle Fehlbenutzung durch den unerfahrenen Nutzer Probleme aufwerfen kann, die bei korrekter Nutzung nicht auftreten würden. In diesem Fall wurden durch die Nutzung keine zusätzlichen Fehler entdeckt. Auch hier war das „Suche……“ leicht verschoben und die Lokalisierung dauerte länger als optimal. Dennoch verlief die Nutzung insgesamt sehr erfolgreich. Alle Funktionen wurden ohne vorherige Einweisung sofort gefunden und funktionierten einwandfrei. Mehrere Feuerwehrleute, die die App auf dem gleichen Smartphone testeten, hoben insbesondere die einfache Handhabung auch mit einem Lederhandschuh hervor. Daher ist eine Betriebsanleitung für die aktuelle Version der App nicht erforderlich.

### 5.4. Schlussfolgerungen aus den Tests

Die durchgeführten Tests haben bestätigt, dass die App, abgesehen von einigen geringfügigen Designfehlern, einwandfrei funktioniert. Die Tests haben zudem gezeigt, dass das Ziel, eine äußerst einfache und benutzerfreundliche App zu entwickeln, die sogar mit einem Feuerwehrhandschuh bedient werden kann, erreicht wurde. Durch die Durchführung von Tests mit mehreren Android-Versionen wurde außerdem sichergestellt, dass die App plattformübergreifend einsetzbar ist.

## 6. Herausforderungen in der Entwicklungsphase

Trotz der Verfügbarkeit von Daten zu Wasserstellen wurde aufgrund bestehender Datenschutzgesetze die Bereitstellung dieser Informationen in CSV-Form abgelehnt. Daher wurde auf öffentlich zugängliche Quellen zurückgegriffen und 25 Wasserstellen manuell ausgewählt. Die Authentizität der Daten wurde überprüft, was einen eingeschränkten Testbetrieb ermöglichte. Eine Erprobung mit mehreren tausend Wasserstellen war jedoch leider nicht möglich. Daher kann für die Funktionalität bei einer Größenordnung von über 25 Wasserstellen keine Garantie übernommen werden.

## 7. Mögliche Erweiterungen

Obgleich die Anwendung bereits den festgelegten Zielen gerecht wird, existieren dennoch Potenziale zur Weiterentwicklung dieses Projekts. Eine solche Verbesserung könnte beispielsweise die Implementierung einer Funktion sein, die es ermöglicht, auf die Positionen von Wasserstellen zu klicken, um detaillierte Informationen wie Standort und Rohrdurchmesser im Falle von Hydranten zu erhalten. Darüber hinaus wäre es von Vorteil, wenn die App die Möglichkeit böte, Adressdaten direkt einzufügen, was die Effizienz steigern und wertvolle Sekunden einsparen könnte. Eine zusätzliche Option könnte die Einrichtung einer Ansicht für die Einsatzleitung sein, die es der Leitung ermöglicht, den Feuerwehrleuten individuelle Positionen zuzuweisen. Dies könnte insbesondere bei größeren Einsätzen zu einer verbesserten Organisation beitragen.
