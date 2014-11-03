// What are the main parameters musician control?

// first thing to make is an sin oscillator, an object that
// creates sound for us

// make an sin oscillator and chucking it 
// into the DAC, (Digital Analog Converter)
SinOsc s => dac;

// Three elements of sound: volumne, frequency, duration

// 1.Volume, we can go from 0 to 1
// .gain is a method for controlling volume
0.6 => s.gain;  

// 2. Frequency:  the human voice is between 20 to 4000 hertz
220 => s.freq;

// 3. Duration: in chuck, time is built into the language
1::second = now;
