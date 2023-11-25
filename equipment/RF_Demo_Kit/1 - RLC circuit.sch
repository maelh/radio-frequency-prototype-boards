<QucsStudio Schematic 4.3.1>
<Properties>
View=36,-279,952,619,1,0,34
Grid=10,10,1
DataSet=*.dat
DataDisplay=*.sch
OpenDisplay=1
showFrame=0
FrameText0=Titel
FrameText1=Gezeichnet von:
FrameText2=Datum:
FrameText3=Revision:
</Properties>
<Symbol>
</Symbol>
<Components>
Eqn Eqn1 1 260 50 0 8 0 0 "S11_dB=dB(S[1,1])=" 1 "yes" 0
.SP SP1 1 80 30 0 65 0 0 "log" 1 "50kHz" 1 "600MHz" 1 "401" 1 "no" 0 "1" 0 "2" 0 "none" 0
Pac P1 1 80 -90 18 -26 0 0 "1" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
GND * 1 80 -60 0 0 0 0
C C1 1 210 -120 -26 17 0 0 "100 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
L L1 1 320 -60 -26 10 0 0 "68 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
R R1 1 320 -180 -26 15 0 0 "49.9 Ω" 1 "26.85" 0 "european" 0 "SMD0603" 0
GND * 1 440 -60 0 0 0 0
</Components>
<Wires>
80 -120 180 -120 "" 0 0 0 ""
240 -120 270 -120 "" 0 0 0 ""
350 -60 370 -60 "" 0 0 0 ""
270 -120 270 -60 "" 0 0 0 ""
270 -60 290 -60 "" 0 0 0 ""
350 -180 370 -180 "" 0 0 0 ""
270 -180 270 -120 "" 0 0 0 ""
270 -180 290 -180 "" 0 0 0 ""
370 -180 370 -120 "" 0 0 0 ""
370 -120 370 -60 "" 0 0 0 ""
370 -120 440 -120 "" 0 0 0 ""
440 -120 440 -60 "" 0 0 0 ""
</Wires>
<Diagrams>
<Smith 569 195 336 336 31 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"S[1,1]" "" #0000ff 2 3 0 0 0 0 "">
</Smith>
</Diagrams>
<Paintings>
</Paintings>
