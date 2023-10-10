# Fabricating the RF proto boards

The necessary ZIP files are available in the [fabrication directory](fabrication/), ready to be sent to a PCB manufacturer.
They are tuned for JLCPCB, but you can easily adjust the settings as needed when generating the Gerber, drill and map files from within the KiCad projects (see [below](#generating-files-manually)).

## PCB ordering website options
- *Extended board version:* inform your manufacturer to keep the silkscreen for the U.FL connectors, since it's on the bare PCB substrate (no solder mask underneath). To do so, write a note in the order page remark field: "Keep the silkscreen on the solder mask openings."
- Select "Untented" for "Via Covering".
- *JLCPCB only*: under "Remove Order Number", select "Specify a location". The "JLCJLCJLCJLC" text on the B.Silkscreen layer [specifies the location of the order number](https://jlcpcb.com/help/article/50-How-to-remove-order-number-from-your-PCB).

## Generating files manually

The project is set up to work correctly with JLCPCB, with all the necessary layers selected and the options properly set.

- Standard board version:
  - Make sure "Do not tent vias" is enabled.
  - "JLCJLCJLCJLC" text on the B.Silkscreen layer:
    - For JLCPCB: do **not** enable "Subtract soldermask from silkscreen", otherwise the text will be clipped, and the ordering number will be placed at a random location.
    - For others: hide the text, as it will be unnecessary clutter.

- Extended board version:
  - Make sure "Do not tent vias" is enabled.
  - "JLCJLCJLCJLC" text on the B.Silkscreen layer:
    - For JLCPCB: keep the text visible, so the ordering number is not placed at a random location.
    - For others: hide the text, as it will be unnecessary clutter.
  - Do **not** enable "Subtract soldermask from silkscreen", unless the silkscreen for the U.FL connectors creates issues, because it is printed on the bare PCB substrate. If you keep the U.FL silkscreen, make sure to let the manufacturer know that the silkscreen on the bare PCB substrate is intentional. To do so, write a note in the order page remark field: "Keep the silkscreen on the solder mask openings."

Default plot settings (menu`File|Fabrications Output|Gerbers (.gbr)...`) for standard and extended board versions:

![KiCad 7 plot settings](images/PlotSettings.png "KiCad 7 plot settings")

Now, generate the Gerber, the drill, and the map files. The results will be in the gerbers/ sub-directory. Put all the generated files in gerbers/ into a ZIP file, and upload them to your manufacturer.

See also:
  - [How to generate Gerber and Drill files in KiCad 7 (JLCPCB)](https://jlcpcb.com/help/article/362-how-to-generate-gerber-and-drill-files-in-kicad-7)
  - [How to Generate Gerber and Drill Files in KiCad 7.0 (PCBWay)](https://www.pcbway.com/helpcenter/technical_support/How_to_Generate_Gerber_and_Drill_Files_in_KiCad_7_0.html)

## Experience with submitting designs to JLCPCB

I fabricated the extended board version at JLCPCB. For my first (and so far only) order, I enabled "Confirm Production file", which turned out to be a good idea. Initially, they reduced the solder mask openings on the back side, which effectively removed the ground ring. Also, the silkscreen for the U.FL connectors on the front was removed and then, when communicating to readd them, they were clipped.

I suspect the wording in the remark field on the order page was the issue, so I updated it in the README to match their wordings more closely: "Keep the silkscreen on the solder mask openings." (same note is mentioned in ordering instructions above). The clipping was possibly due to the closeness to the SMD pads on the front. I was reviewing their changes directly and sending pictures comparing their version and my desired version, with arrows pointing out the differences too clarify, but maybe a note "Keep silkscreen close to copper pads unchanged." could help.

Similarily, for the reduced solder mask openings on the back side, a note saying "Solder mask openings on back side of PTH is intentionally covering the adjacent ground plane." However I suspect such a statement will not work, as in my experiece images worked best. Ideally, you could point that out in something like the Fab layer, adding arrows to say the crossing of two copper regions (ring around PTH and ground plane) is intentional.

In the production files (if you chose to review them), diameters of PTHs will be enlarged, but that is to account for the narrowing of the holes when copper plating them, and is normal. Otherwise, I saw minor dimension changes of pads, but its mostly cosmetic: the outer ground pads for the U.FL connectors was enlarged and moved a bit and is now protruding from the rectangular frame. I mostly would like to know why it happened -- possibly to account for the via size, but the change was minimal --, so I can account for it in other boards/situations, where it might be relevant. But it was not worth the effort to keep delaying production.

In general, watch out for some changes manufacturers will automatically apply to your design: [relevant instructions when ordering at JLCPCB](https://jlcpcb.com/help/article/14-Instructions-for-ordering). Somewhat related: [How to Order Boards with Solder Mask Defined Pads (JLCPCB)](https://jlcpcb.com/help/article/84-How-to-Order-Boards-with-Solder-Mask-Defined-Pads).

### DFM (Design for manufacturability) analysis / checks

If you selected the "Confirm Production file" option, you will receive a RAR/ZIP file with several folders.
The [`ok` folder contains the production files](https://www.libreservo.com/en/articulo/how-check-jlcpcb-production-files) used by the manufacturer for fabrication, and your original design is found in the `YG` folder.

To review production files received from fabs such as PCBpartner or JLCPCB, you can use [iPCB-DFM](https://www.pcbpartner.com/iPCB-DFM). Given the screenshots I received, it seems to be the same software that JLCPCB uses for reviewing. In iPCB-DFM choose `File|Open odb` and select the TGZ file in the `ok` folder.

You can also simply do a manual visual compare using KiCad Gerber viewer, to see what changes the fab made. In that case, open all the Gerber files, that have simple names (the names are essentially Protel file extensions). For a two layer design, like the protoboards here, the relevant files are: bl, bo, bs, drl, ko, tl, to, ts.

If you want to check your design before submitting it to a manufacturer, you can use [FreeDFM](https://www.my4pcb.com/net35/FreeDFMNet/FreeDFMHome.aspx).

### Manufacturing process

If you are curious, here is also a description of [how boards are fabricated step by step in a factory](https://www.digikey.com/en/maker/blogs/2018/how-is-a-pcb-manufactured).

### Fabrication results

I received my first extended RF protoboards on October 9, 2023. All tests indicate they are working well -- I made continuity tests with my multimeter -- and they were manufactured to specification regarding silkscreen, drilled hole diameters and correct through hole plating to the ground planes.

I haven't sent the standard design to a PCB manufacturer yet. Let me know if there are any issues in manufacturability and what instructions you followed to be successful.
