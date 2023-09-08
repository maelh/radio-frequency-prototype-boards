# RF prototyping boards

When designing radio frequency circuits, we cannot rely on traditional perfboards or breadboards. Perfboards lack a ground plane, that is essential for RF circuits, and breadboards have too much parasitic capacitances and inductances (mainly due to the horizontal signal rails, and the vertical power rails).

This repository presents boards suitable for prototyping RF circuits, ready to be sent to a PCB manufacturer.

## Original work (ExpressPCB only)

[MegawattKS](https://www.youtube.com/@MegawattKS) gives an introductory [radio design course on YouTube](https://www.youtube.com/watch?v=r_p7AHsSOdw&list=PL9Ox3wpnB0kqekAyz6blg4YdvoEMoJNJY), with an accompanying site detailing how to [prototype RF circuits](https://ecefiles.org/rf-circuit-prototyping/).
It's quite a useful course for getting hands on experience and a non-math heavy intuition, using (comparatively) affordable tools, such as the [NanoVNA and the TinySA for radio design](https://www.youtube.com/watch?v=B7DFOq9rM_M&list=PL9Ox3wpnB0koBGofotI4xS8R0ct0FeYfv).

When you don't happen to have access to the very expensive RF equipment of a university laboratory, this course is ideal, as it was designed to measure and characterize the built RF circuits with the NanoVNA and TinySA in mind. (Tools which are widely used in DIY/amateur communities, and accordingly have lots of documentation and tutorial videos available online.)

Finally, MegawattKS kindly provided his [original files], which I used to take measurements of the various footprints and layout dimensions.

## Derived work (KiCad, many PCB manufacturers)

I faithfully redesigned the RF protoboard in KiCad, based on those measurements, to enable fabricating them with pretty much any PCB manufacturer.
The manual conversion was necessary, since the original boards are made in ExpressPCB, which is a format exclusive to this manufacturer, with no export/import options. 

This resulted in two boards (out of the many variations I tried):

- The [standard version], with all the original dimensions and features being kept.

- The [extended version], with the following changes compared to the standard version:
  - **added**: screw terminal for power
  - **added**: mounting holes
  - **extended**: a complete 4 pad U.FL connector footprint with silkscreen (for easier alignment)
  - **changed**: ground rings instead of fully exposed ground plane
    - solder mask only exposes ground rings around the backside of plated through holes; ground rings should form nicer solder bonds and hopefully ease solderability to the ground plane
  
The screw terminal on the extended version reduces the amount of loose wires going off the board. Now, all the power wires from the sub-boards can be soldered onto SMD pads, which have traces leading to the one central screw terminal.

TODO: add 3d renderings of the boards, front and back side

## Other RF prototyping board designs

While doing some research on the topic, I found the following alternatives, you might find useful as well:
Several alternative designs exists (TODO: add references). 
