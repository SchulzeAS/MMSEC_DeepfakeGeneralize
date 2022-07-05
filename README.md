MMSEC_DeepfakeGeneralize Evaluations Semiautomatisierung


Die Suite geht von einer statischen Ordnerstruktur aus:

|- deepfake-scanner                     # Der Deepfakescanner von Deepware
|- dfdc_deepfake_challenge              # Der Deepfakescanner von Selim Seferbekov
|- merge_csv.py
|- preprocess.py
|

``` preprocess.py ``` verarbeitet das Resultat des Deepwarescanners, um es zu dem des Scanners von seferbekov kompatibel zu machen. 
``` merge_csv.py ```  verbindet die csv Dateien von seferbekov und die Ausgabe von preprocess.py zu einer finalen Ausgabe. 
``` run_both_on_dataset.sh ``` ruft automatisiert beide Detektoren auf einem Datensatz auf, welcher als Argument eingegeben werden muss. 
                                außerdem werden die Start- und Endzeiten der Detektoren als Unixtimestamps in einer Datei date.txt gespeichert.
