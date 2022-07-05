MMSEC_DeepfakeGeneralize Evaluations Semiautomatisierung


Die Suite geht von einer statischen Ordnerstruktur aus:

|- deepfake-scanner                     # Der Deepfakescanner von Deepware  
|- dfdc_deepfake_challenge              # Der Deepfakescanner von Selim Seferbekov  
|- merge_csv.py  
|- preprocess.py  
|- run_both_on_dataset.sh  

``` preprocess.py ``` <p align="center">verarbeitet das Resultat des Deepwarescanners, um es zu dem des Scanners von seferbekov kompatibel zu machen. </p>  
``` merge_csv.py ```  <p align="center">verbindet die csv Dateien von seferbekov und die Ausgabe von preprocess.py zu einer finalen Ausgabe.  </p> 
``` run_both_on_dataset.sh ``` <p align="center">ruft automatisiert beide Detektoren auf einem Datensatz auf, welcher als Argument eingegeben werden muss.   
                                außerdem werden die Start- und Endzeiten der Detektoren als Unixtimestamps in einer Datei date.txt gespeichert.  </p> 
 
 <sub><sup> Keine Garantie das dieser Haufen Code zu 100% funktioniert </sup></sub>
