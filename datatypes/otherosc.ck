// Author: Anh Kim H.
// Date: Nov 1 2014

// Info: There are 3 other oscillators besides the sine osc
//       we are going to compare how each sounds 

// square osc has a grittier sound
SqrOsc s => dac;
//set volume 0.6
0.6 => s.gain;
//set frequence to 220 hertz
220 => s.freq;
1::second => now;

0.5 => s.gain;
440 => s.freq;
2::second => now;

0.3 => s.gain;
330 => s.freq;
1::second => now;

// triangle osc is a sound between sine and square osc
TriOsc t => dac;

0.6 => t.gain;
220 => t.freq;
1::second => now;

0.5 => t.gain;
440 => t.freq;
2::second => now;

0.3 => t.gain;
330 => t.freq;
1::second => now;


// Sawtooth wave, has lots of partials and harmonics
SawOsc u => dac;

0.6 => u.gain;
220 => u.freq;
1::second => now;

0.5 => u.gain;
440 => u.freq;
2::second => now;

0.3 => u.gain;
330 => u.freq;
1::second => now;
