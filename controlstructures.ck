// Author: AKH
// Date: 11.3.2014
// Info: Demo on control structures (if, else)

// There are 4 control structures in chucK:
// if else, for loop, while loop



//sound network
SinOsc s => dac;

// set freq
222.45 => s.freq;

//set volumne
0.2 => s.gain;

1 => int chance;

if( chance == 1) {
    // sound only plays if chance is 1
    1::second => now;
}
else {
    //set new freq
    440.32 => s.freq;
    //play for 3 seconds
    3::second => now;
}

