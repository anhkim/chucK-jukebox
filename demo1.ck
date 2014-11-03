// sound generation module, connection to dac, the speaker
SincOsc foo => dac;

// set frequency to 440
440 => foo.freq;

// let time pass for 2 secs
2::second => now;