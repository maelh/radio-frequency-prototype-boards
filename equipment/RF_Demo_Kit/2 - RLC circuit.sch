<QucsStudio Schematic 4.3.1>
<Properties>
View=36,-219,952,499,1,0,0
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
GND * 1 80 -60 0 0 0 0
GND * 1 440 -60 0 0 0 0
Pac P1 1 80 -90 18 -26 0 0 "1" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
R R1 1 270 -40 -26 15 0 0 "49.9 Ω" 1 "26.85" 0 "US" 0 "SMD0603" 0
C C1 1 230 -120 -26 17 0 0 "220 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
L L1 1 310 -120 -26 10 0 0 "68 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
</Components>
<Wires>
80 -120 200 -120 "" 0 0 0 ""
260 -120 280 -120 "" 0 0 0 ""
200 -120 200 -40 "" 0 0 0 ""
200 -40 240 -40 "" 0 0 0 ""
300 -40 360 -40 "" 0 0 0 ""
340 -120 360 -120 "" 0 0 0 ""
360 -120 440 -120 "" 0 0 0 ""
360 -120 360 -40 "" 0 0 0 ""
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
