# RF prototype boards

When designing radio frequency circuits, we cannot rely on traditional perfboards or breadboards. Perfboards lack a ground plane that is essential for RF circuits, and breadboards have too much parasitic capacitances and inductances (mainly due to the horizontal signal rails, and the vertical power rails).

## Original work (ExpressPCB only)

[MegawattKS](https://www.youtube.com/@MegawattKS) has an introductory [Radio design course on Youtube](https://www.youtube.com/watch?v=r_p7AHsSOdw&list=PL9Ox3wpnB0kqekAyz6blg4YdvoEMoJNJY) with an accompanying site detailing how to [prototype RF circuits](https://ecefiles.org/rf-circuit-prototyping/).
It's quite a useful course for getting hands on experience, using (comparatively) affordable tools, such as the [NanoVNA and the TinySA for Radio Design](https://www.youtube.com/watch?v=B7DFOq9rM_M&list=PL9Ox3wpnB0koBGofotI4xS8R0ct0FeYfv), i.e., to measure and characterize the built RF circuits. It allows for a much more approchable experience, when you don't happen to have access to the very expensive RF equipment of a university laboratory.

## Derived work (KiCad, many PCB manufacturers)

I manually converted the RF protoboard design to KiCad, since the original boards are made in ExpressPCB, which is a format exclusive to this manufacturer, with no export/import options. The KiCad version allows to pick pretty much any PCB manufacturer for fabricating the boards.

In the [standard version], all the original dimensions and features are kept.

The [extended version] adds mounting holes, and a screw terminal, to reduce the amount of loose wires going off the board. All power wires from the sub-boards can be soldered onto SMD pads, which are connected to the one central screw terminal.

## Other RF prototyping board designs

While doing some research on the topic, I found the following alternatives, you might find useful as well:
Several alternative designs exists (TODO: add references). 
