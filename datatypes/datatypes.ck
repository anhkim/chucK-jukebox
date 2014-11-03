// Author: Anh Kim H.
// Date:   Nov 3, 2014
// Info:   Practice in data types of chucK

// chucK has the following data types:
// integer, floats,char, string, dur, time

// Integer example
2 => int a;
10 * a => a;
<<< a >>>;

//sound network
SincOsc s => dac;

// middle C freq (in hz)
261.63 => float.myFreq;

// variable for volume control
0.6 = > float myVol;

// set freq
myFreq => s.freq;
// set vol
myvol => s.gain;

// one sec added to now,
// this is important because sound are created ONLY
// when time is passed
1::sec = > now;