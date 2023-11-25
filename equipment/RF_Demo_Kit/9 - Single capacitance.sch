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
.SP SP1 1 80 30 0 65 0 0 "log" 1 "50kHz" 1 "300MHz" 1 "401" 1 "no" 0 "1" 0 "2" 0 "none" 0
GND * 1 80 -60 0 0 0 0
GND * 1 440 -60 0 0 0 0
Pac P1 1 80 -90 18 -26 0 0 "1" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
C C1 1 280 -120 -26 17 0 0 "220 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
</Components>
<Wires>
80 -120 250 -120 "" 0 0 0 ""
310 -120 440 -120 "" 0 0 0 ""
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
