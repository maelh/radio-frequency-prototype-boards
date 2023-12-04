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

- `O` -- `open` calibration data for port 1 is present
- `S` -- `short` calibration data for port 1 is present
- `D` -- `load` calibration data for port 1 is present
- `X` -- `isolation` calibration data for port 1 and 2 is present
- `t` -- `through` calibration data for port 1 and 2 is present

jjj

- `C<n>` -- currently selected calibration data, where `<n>` is the storage index
  - `C*` is calibration data stored RAM only, and therefore has not storage index
  - `C0` is the default calibration data, loaded upon start of the NanoVNA.

- `R` -- `open` calibration data for port 1 is present

- `T` -- `through` calibration data for port 1 and 2 is present

- `Pa` or `P<n>` -- currently selected output power level (of clock generator)
  - `Pa` is short for `Power Auto`, i.e., output power level depends on frequency (and is automatically chosen).
  - `P<n>` means fixed output power level, i.e., same power level of value `<n>` for all frequencies.
    - Possible values are `P2`, `P4`, `P6`, or `P8`, which mean 2mA, 4mA, 6mA, or 8mA, respectively.
  - `Pa`/`P<n>` indicator shown in `red`, if it doesn't match the power level used during calibration.
  - See the menu entry `CALIBRATE>POWER AUTO` or `CALIBRATE>POWER <n>mA`.

### Tips

The measurement accuracy and observable artifacts on graphs can vary depending on a few settings. If you change them, be sure to save the config, and then calibrate your NanoVNA again.

- Select the right `mode`/clock generator chip to reduce artifacts
  - Older versions of the NanoVNA use Si5351 chips, while newer ones use MS5351 chips. To identify which chip your model has, look for an `_MS` suffix on the hardware version label on the back of the NanoVNA. For example, `HW version: 4.3_MS` indicates a MS5351 model.
  - After a firmware update, several config settings might have been changed or reset to defaults (e.g., the Si5351 mode is the default, which is only valid for older NanoVNAs). A wrong setting will result in excessive artifacts/unsteadiness in the graphs. To solve this issue, see the menu entry `CONFIG>EXPERT SETTINGS>MORE>MODE` and select the right model.

- Adjust `threshold` if you see spurs around or below 300MHz
  - Officially the clock generator chips/frequency synthesizer chips are only specified up to 200MHz, but often work up to 300MHz. In case they do not, the threshold has to be adjusted until spurs are reduced. See the menu entry `CONFIG>EXPERT SETTINGS>THRESHOLD` and experiment with the value.
- Adjust `IF bandwidth` when you see unsteady graphs
  - Firmware updates can change the IF bandwidth from 1000Hz to 4000Hz, which can cause less accuracy/unsteady graphs. See the menu entry `DISPLAY>IF BANDWIDTH` to change the value back to 1000Hz.
- Increase `sweep points` for improved accuracy
  - More sweep points will increase the resolution of your graphs, since more samples are taken, i.e., the steps between two sampled frequencies are smaller. See the menu entry `STIMULUS>SWEEP POINTS`. It will also slow down the refresh rate of the screen, so it's a tradeoff.

## Measuring

If you have the RF Demo Kit mentioned in [NecessaryToolsAndParts](NecessaryToolsAndParts.md), you can test your NanoVNA and see if it creates valid results.

### RF demo kit

I simulated many of the circuits on the RF demo kit, to see what curves to really expect on the Smith Charts, not just the simplified ones shown on the PCB or documentation. This also gave me the opportunity to collect all data in one place: component values, frequency sweep range, circuit diagram, corresponding Smith Chart.

## Testing if your NanoVNA is in order

https://groups.io/g/nanovna-users/topic/testing_if_a_nanovna_is_good/102706813
