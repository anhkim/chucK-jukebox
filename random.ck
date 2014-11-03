// sound generation module, connection to dac, the speaker
SinOsc foo => dac;


while (true) {
    //randomize frequency from 30, 1000
    Math.random2f(30,1000) => foo.freq;
    // let time pass for 100 milliseconds
    // produces fast computerized-robotsound
    100::ms=> now;
}

while(true) {
    Math.random2f(10,100) => foo.freq;
    400::ms => now;
}

// the human ear preceive sounds about 30 hz per second
while(true){
    Math.random2f(30,1000) => foo.freq;
    // go through a digital extreme, and change freq
    // every digitalsample, of which there are 44,100 per sec
    // radio, noise, with a whistle
    // by taking (30+1000)/2 =~ about a little more than 500
    1::samp => now;
}

// the time ranges from: millisecond, 
// second, hour, day, week, and even years

while(true) {
    Math.random2f(30,1000) => foo.freq;
    1:week => now;
}
