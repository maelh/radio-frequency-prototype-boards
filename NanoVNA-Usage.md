# Using the NanoVNA

## Calibration

The official manual of the NanoVNA has a section on [how to calibrate the NanoVNA](https://nanovna.com/?page_id=2).

### Tips

The measurements accuracy and observable spurs on graphs can vary depending on a few settings. If you change them, be sure to calibrate your NanoVNA again, afterwards.

- Select the right mode/frequency synthesizer chip
  - If you updated the firmware, several config settings might have been changed, which is noticeable in excessive spurs/unsteadiness of the graphs. See in the menu at `CONFIG>EXPERT SETTINGS>MORE>MODE` and select the right model. Newer NanoVNAs tend to use MS5351, but after a firmware update, `mode` is reset to the default, but incorrect value Si5351.
- Adjust IF bandwidth when you see unsteady graphs
  - Firmware updates can change the IF bandwidth from 1000Hz to 4000Hz, which can cause less accuracy/unsteady graphs. See in the menu at `DISPLAY>IF BANDWIDTH` to change the value back to 1000Hz.
- Increase sweep points
  - More sweep points will increase the resolution of your graphs, since more samples are taken, i.e., the steps between two sampled frequencies are smaller. See in the menu at `STIMULUS>SWEEP POINTS`. It will also slow down the refresh rate of the screen, so it's a tradeoff.

## Measuring

If you have the RF Demo Kit mentioned in [NecessaryToolsAndParts](NecessaryToolsAndParts.md), you can test your NanoVNA and see if it creates valid results.

## Testing if your NanoVNA is in order

https://groups.io/g/nanovna-users/topic/testing_if_a_nanovna_is_good/102706813
