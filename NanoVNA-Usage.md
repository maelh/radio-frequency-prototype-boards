# Using the NanoVNA

## Calibration

The official manual of the NanoVNA has a section on [how to calibrate the NanoVNA](https://nanovna.com/?page_id=2). Here I will only focus on information missing from the manual.

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

The <n> in C<n> is placeholder for a digit from 0 to 9. It specifies the storage index of the currently used calibration data.
Pa can also be P2, P4, P6, or P8.

If one (or more) of the indicators are missing, calibration for that part is not present/was reset/not loaded. If an indicator is shown in lower case or another color, the currently loaded calibration is only of limited validity, since some parameter the calibration depends on was changed after calibration, such as a stimulus setting.

The power mode used during calibration is indicated by `Pa` which is short for `Power Auto`. Other possible values are `P2`, `P4`, `P6`, or `P8`, which mean 2mA, 4mA, 6mA, or 8mA, respectively. See menu entry `CALIBRATE>POWER AUTO` or `CALIBRATE>POWER <n>mA`. If the power mode is changed after calibration, the Pa/P<n> indicator is shown in red.

### Tips

The measurement accuracy and observable spurs on graphs can vary depending on a few settings. If you change them, be sure to calibrate your NanoVNA again, afterwards.

- Select the right mode/frequency synthesizer chip to reduce spurs
  - If you updated the firmware, several config settings might have been changed, which is noticeable in excessive spurs/unsteadiness of the graphs. See menu entry `CONFIG>EXPERT SETTINGS>MORE>MODE` and select the right model. Newer NanoVNAs tend to use MS5351, but after a firmware update, `mode` is reset to the default, but incorrect value Si5351.
- Adjust `threshold` if you see spurs around or below 300MHz
  - Officially the clock generator chips/frequency synthesizer chips are only specified up to 200MHz, but often work up to 300MHz. In case they do not, the threshold has to be adjusted until spurs are reduced. See menu entry `CONFIG>EXPERT SETTINGS>THRESHOLD` and experiment with the value.
- Adjust IF bandwidth when you see unsteady graphs
  - Firmware updates can change the IF bandwidth from 1000Hz to 4000Hz, which can cause less accuracy/unsteady graphs. See menu entry `DISPLAY>IF BANDWIDTH` to change the value back to 1000Hz.
- Increase sweep points for improved accuracy
  - More sweep points will increase the resolution of your graphs, since more samples are taken, i.e., the steps between two sampled frequencies are smaller. See menu entry `STIMULUS>SWEEP POINTS`. It will also slow down the refresh rate of the screen, so it's a tradeoff.

## Measuring

If you have the RF Demo Kit mentioned in [NecessaryToolsAndParts](NecessaryToolsAndParts.md), you can test your NanoVNA and see if it creates valid results.

## Testing if your NanoVNA is in order

https://groups.io/g/nanovna-users/topic/testing_if_a_nanovna_is_good/102706813
