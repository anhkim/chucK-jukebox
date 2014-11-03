// Author: AKH
// Date: 11.3.2014
// Info: Demo on control structures (for and while loop)

//sound network
SinOsc s => dac;

// using a for loop to create a frequency sweep
for(20 => int i; i< 400; i++){
    <<< i >>>;
    i => s.freq;
    0.01::second => now;
}

// same frequency sweep, using the while loop
//initialize var
20 => int i;
while (i < 400) {
    i => s.freq;
    <<< i >>>;
    0.01::second => now;
    i++;
}
