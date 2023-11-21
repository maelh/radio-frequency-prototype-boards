# Using the NanoVNA

## Calibration

The official manual of the NanoVNA has a section on [how to calibrate the NanoVNA](https://nanovna.com/?page_id=2). The following will only focus on information missing from the manual.

Before starting calibration, reset all using the menu entry `CALIBRATE>RESET`.

### Calibration status

On the left side of the screen there are 7 symbols, stacked upon each other, that indicate what was calibrated:

```
C<n>
D
R
S
T
X
Pa
```

In general, `<n>` is a placeholder for a digit from 0 to 9.

`<n>` in `C<n>` specifies the storage index of the currently used calibration data. `C0` is the calibration data that is loaded by default on start.

`Pa` can also be `P<n>`, where `<n>` is 2, 4, 6, or 8. That is, aside from `Pa`, possible symbols are `P2`, `P4`, `P6`, `P8`.

If one (or more) of the 7 vertical symbols are missing, calibration for that part is not present/was reset/not loaded. If an indicator is shown in lower case or another color, the currently loaded calibration is only of limited validity, since some parameters the calibration depends upon (such as stimulus settings) were changed after calibration.

Examples:
  - `c0` means calibration data from storage index 0 was loaded, which was created with a frequency sweep span of 50kHz to 900MHz, which is different from the currently set sweep span of 50kHz to 600MHz.
  - `Pa` is shown in red, because calibration was done with output power level set to 2mA, i.e., `P2` and not auto output power level `Pa`.

#### Meaning of each symbol

- `C<n>` -- calibration data currently used, where `<n>` is the storage index
  - `C0` is the default calibration data, loaded upon start of the NanoVNA
- `Pa` or `P<n>` -- currently selected output power level
  - `Pa` is short for `Power Auto`, i.e., output power level depends on frequency (and is automatically chosen)
  - `P<n>` means fixed output power level, i.e., same power level of value `<n>` for all frequencies
    - Possible values are `P2`, `P4`, `P6`, or `P8`, which mean 2mA, 4mA, 6mA, or 8mA, respectively
  - `Pa`/`P<n>` indicator shown in `red`, if it doesn't match the power level used in calibration
  - See menu entry `CALIBRATE>POWER AUTO` or `CALIBRATE>POWER <n>mA`.

The output power level used during calibration 

### Tips

The measurement accuracy and observable spurs on graphs can vary depending on a few settings. If you change them, be sure to calibrate your NanoVNA again, afterwards.

- Select the right `mode`/frequency synthesizer chip to reduce spurs
  - If you updated the firmware, several config settings might have been changed, which is noticeable in excessive spurs/unsteadiness of the graphs. See menu entry `CONFIG>EXPERT SETTINGS>MORE>MODE` and select the right model. Newer NanoVNAs tend to use MS5351, but after a firmware update, mode is reset to the default, but incorrect value Si5351.
- Adjust `threshold` if you see spurs around or below 300MHz
  - Officially the clock generator chips/frequency synthesizer chips are only specified up to 200MHz, but often work up to 300MHz. In case they do not, the threshold has to be adjusted until spurs are reduced. See menu entry `CONFIG>EXPERT SETTINGS>THRESHOLD` and experiment with the value.
- Adjust `IF bandwidth` when you see unsteady graphs
  - Firmware updates can change the IF bandwidth from 1000Hz to 4000Hz, which can cause less accuracy/unsteady graphs. See menu entry `DISPLAY>IF BANDWIDTH` to change the value back to 1000Hz.
- Increase `sweep points` for improved accuracy
  - More sweep points will increase the resolution of your graphs, since more samples are taken, i.e., the steps between two sampled frequencies are smaller. See menu entry `STIMULUS>SWEEP POINTS`. It will also slow down the refresh rate of the screen, so it's a tradeoff.

## Measuring

If you have the RF Demo Kit mentioned in [NecessaryToolsAndParts](NecessaryToolsAndParts.md), you can test your NanoVNA and see if it creates valid results.

## Testing if your NanoVNA is in order

https://groups.io/g/nanovna-users/topic/testing_if_a_nanovna_is_good/102706813
