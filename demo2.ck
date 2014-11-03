SinOsc foo => dac;

while (true) {
    
    Math.random2f(30,1000) => foo.freq;
    .2::second => now;
}



