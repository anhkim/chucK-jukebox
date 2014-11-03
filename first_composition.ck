// Author: AKH
// Date: 11.3.2014
// Info: Demo composition with two oscillators

// good to think s and t as "tracks"
SinOsc s => dac;
SqrOsc t => dac;

// only play s track
0.5 => s.gain;

//while t track is not on, by setting t sound to 0
0 => t.gain;

for(0 => int i; i < 500; i++) {
    i => s.freq;
    0.001::second => now;
}

// once s is done, now only play t

0.2 => t.gain;
0 => s.gain;
for(0 => int i; i < 500; i++) {
    i => t.freq;
    0.001::second => now;
}

// play s and t at the same time
0.5 => s.gain;
0.2 => t.gain;

for (0 => int i; i < 500; i++) {
    i => t.freq;
    i*2 => s.freq;
    0.001::second => now;
}