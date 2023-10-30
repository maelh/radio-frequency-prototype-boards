# Necessary tools and parts

The RF prototype boards have a 0.1" pin pitch, which means the pad holes are 100 mils (= 2.54 mm) apart from each other. Also, the pads on the boards are separated by 10 mils (= 0.254 mm), so any SMD component that comfortably bridges this gap can be used.

Accordingly, you can *pick SMD components of any of the following sizes*:
  - 0805 (2.0 mm × 1.25 mm)
  - 0603 (1.6 mm × 0.8 mm)
  - 0402 (1.0 mm × 0.5 mm)

Note: SMD sizes are given in [imperial code](https://en.wikipedia.org/wiki/List_of_integrated_circuit_packaging_types#Rectangular_passive_components), not metric code.

Since the SMD parts should make solid connections with the board, the smallest acceptable size is 0402 (1.0 mm × 0.5 mm). Smaller sizes will have their SMD pads reach into the *gap* between two board pads, instead of fully touching the board's pads.

Choose the part size depending on how much of the board pads (and their holes) you want to cover, and for ease of use/soldering.

## Recommended lead-free solder

After trying various lead-free solders, I can recommend Sn100Ni+ as a well flowing solder making nice shiny joints.<br/>
A diameter of 0.5 mm is well suited for SMD components, while still allowing to solder through-hole parts.

The exact solder I use is called `Felder ISO-Core "Ultra-Clear" Sn100Ni+ 0.5mm`.

## SMD component kits and basic parts

- SMD kit with many parts (except inductors)
  - Search terms:
    - Interstellar Electronics SMD Professional Assortment Kit
    - "2900 pcs SMD 1206 0805 0603 Component Assortment, Resistor, Capacitor, Diode, Transistor, OpAmp, IC, Solder, PCB, SMT Soldering Assorted Kit" by Zebulon
    - "SMD SMT Electronic Components Assortment 1206 0805 0603 Resistors Capacitors Diodes Transistors LEDs Potentiometers Opamps ICs Zener PCBs 2900pcs" by Zebulon
  - https://www.amazon.de/gp/product/B08QGD9G7C
- Inductor sample book
  - Search terms:
    - SMD Multilayer Ceramic Inductor Kit 0201 0402 0603 0805 1206 Chip Inductance Assorted Kit Sample Book
  - https://www.aliexpress.us/item/1005004268660183.html (pick the "0603 52valuesX25pcs" or the "0805 47valuesX25pcs" option)
- U.FL connectors
  - Search terms:
    - 50PCS IPEX U.FL SMD SMT Solder for PCB Mount Socket Jack Female RF Coaxial Connector
    - IPX U.FL RF Coaxial Plug SMD SMT Soldering Conductor Board Female for Antenna Wireless LAN Equipment Coaxial Cable Pack of 80
  - https://www.amazon.de/gp/product/B0BFQ98MLC
  - https://www.berrybase.de/u.fl-steckverbinder-stecker-50-937-gerade-smd
- Rubber feet with adhesive
- For the *extended* prototype board:
  - Screw terminals with a 5.0 mm pin pitch
    - https://www.amazon.de/gp/product/B0C3HB9HK7
  - M2.5 spacer rods, screws and nuts (nylon, or some other non-conductive material) for the PCB mounting holes
    - https://www.berrybase.de/420-teiliges-nylon-abstandshalter-sortiment-in-kunststoffbox-m2-5-weiss

## Test equipment
- NanoVNA
  - Many different versions, I use [NanoVNA-H4](https://nanovna.com/) (see recommended [vendor list](https://nanovna.com/?page_id=121) to avoid bad clones), MegaWattKS uses [NanoVNA-F](https://deepelec.com/nanovna-f/), both having a 4" screen.
- [TinySA](https://tinysa.org/wiki/pmwiki.php?n=Main.Specification) or [TinySA Ultra](https://tinysa.org/wiki/pmwiki.php?n=TinySA4.Specification)
  - See recommended [vendor list](https://tinysa.org/wiki/pmwiki.php?n=Main.Buying) to avoid bad clones.
- **Important:** attenuators and DC blocks
  - For both instruments above you should use attenuators, since the frontends cannot sustain much power.
    - The TinySA will analyze external signals, such as from antennas or signal generators, so attenuators are necessary. The NanoVNA might also need them, when characterizing amplifiers or mixers.
  - 1 or 2 SMA DC blocks, 6 GHz 50 Ohm
    - Search terms:
      - NooElec SMA DC Block - High Quality Inline 50ohm 50kHz 8GHz Terminal Blocks DC
    - https://www.amazon.de/dp/B07YYLHJKS?language=en_GB 
  - SMA attenuator kit, 6 attenuators of 1dB, 2dB, 3dB, 6dB, 10dB and 20dB, each 2W and 50 Ohm
    - Search terms:
      - NooElec SMA Attenuator Kit - 6-piece SMA In-Line attenuator with 2W 50Ohm from 1dB to 42dB in increments of 1dB.
    - https://www.amazon.de/dp/B07YYMT65T?language=en_GB 
- SMA female to SMA male coaxial extension cable
  - Used to create a *simple RF probe* with 40 db attenuation, as described in https://youtu.be/B7DFOq9rM_M?t=858
    - A 4.7 kOhm resistor is stuck into the female SMA connector as a signal pin, and as a ground lead, a piece of wire is wraped around the same female SMA connector, then secured with a nut
    - See also: [A wideband 1:21 DIY 1 kΩ oscilloscope probe](http://jahonen.kapsi.fi/Electronics/DIY%201k%20probe/)
  - Search terms:
    - 6.5ft (2 m) Low-Loss Coaxial Extension Cable RG58 (50 Ohm) SMA Male to SMA Female
    - RG174 SMA Coaxial Cable SMA Male to SMA Female RF Coaxial Cable 6.6 Feet (2 m) + 3 Pieces SMA Adapter Set Low Loss Extension Cable
    - SMA Extension Cable RG58 6.6ft (2M) SMA Male to SMA Female Coaxial Cable Low Loss RF Coaxial Cable
  - https://www.amazon.de/dp/B0C1BFXMWD
  - https://www.amazon.de/dp/B0995QWSS5
- U.FL to SMA Male Coaxial RG178 Low Loss Cable
  - Used to connect the U.FL inputs/outputs of the RF protoboards to oscilloscopes/signal generators/vector network analyzers/spectrum analyzers
  - Search terms:
    - U.FL to SMA Coaxial Cable SMA Male to UFL IPX IPEX Coaxial Cable RG178 12 Inch (30 cm) Pack of 5
  - https://www.amazon.de/dp/B0C1BFXMWD
- Stylus pen for touchscreen (of NanoVNA/TinySA)
  - The TinySA user group has a discussion about [possible stylus options](https://groups.io/g/tinysa/topic/80388765?p=Created%2C%2C%2C20%2C1%2C0%2C0)
 
### Basic addons
- RF Demo Kit for VNA testing / for NanoVNA
  - Has symbolic Smith charts, components for SOLT calibration, example filters, attenuators, resistors, capacitors, inductors, and combinations of the last three basic components, all accessible via U.FL connectors
    -  [RF demo kit quickstart guide](https://www.deepelec.com/files/Rf_Demo_Kit_Quick_start_guide_v2.0.pdf)
  - Search terms:
    - "RF Demo Kit for NanoVNA-F" by [Deepelec](https://deepelec.com/rf-demo-kit/) / SYSJOINT
    - RF Demo Kit for F RF Tester Board HAM Filter Attenuator 
  - https://www.amazon.de/dp/B0BRCL158V
- 2x "NanoVNA Testboard Kit" (the little blue board the filter was built on)
  - [Documentation](https://www.sdr-kits.net/documents/Testboard_kit.pdf)
- stethoscope camera with microphone (or stethoscope  microphone alone)

### Advanced add-ons
- RF probe
  - https://emcesd.com/1ghzprob.htm
- https://www.ph2lb.nl/blog/index.php?page=xtal-adapter-for-nanovna
- https://www.ph2lb.nl/blog/index.php?page=qrp-labs-filter-adapter-for-nanovna
- https://www.ph2lb.nl/blog/index.php?page=rfsampler
- Mostly for the manual (but the NanoVNA Testboard Kit (see above) is better):
  - https://www.ph2lb.nl/blog/index.php?page=component-measuring-adapter-for-nanovna
