// synthesis path
SinOsc foo => NRev r => dac;
.5 => foo.gain;
.1 => r.mix;

//an array as a grab bag of freq we going to need, so
// we can set the freq into a musical register,
// and set that as a freq of the sin wave
[0, 2, 4, 7] @=> int hi[];

while(true) {
    // change parameters true
    Std.mtof( 45 + Std.rand2(1,4) * 12 +
        hi[Std.rand2(0,hi.cap()-1)] )  => foo.freq;
    
    // different rate
    200::ms => now;
}

