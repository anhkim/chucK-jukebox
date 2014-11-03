// Author: AKH
// Date: 11.3.2014
// Info: demo in time 


//How time works in ChucK:
// -time and dur are native types
// -the now keyword holds the current ChucKtime
// -by manipulating now, advance time to generate sound

// time - a point in time
// dur  - a length of time
2::second + 0.5::second => dur quarter;
4::quarter => dur whole;

// now is the heart of chucK
// two special properties of now:
//  - gives you the current time
<<< "now: ", now >>>;
<<< "now (in second): ", now/second >>>;

// - when modified: moves time along in ChucK

// increment now by 3 seconds
5::second => now;
<<< "NEW now (in seconds): ", now/second >>>;

// chain of sound objects
SinOsc foo => dac;

//infinite time loop
while(true) {
    // randomly choose freq 30-1000
    Math.random2f(30,1000) => foo.freq;
    // advance time by 100 ms;
    100::ms => now;
}
