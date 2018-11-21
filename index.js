const Gpio = process.env.NODE_ENV !== "develop" ? require('pigpio-mock').Gpio : require('pigpio').Gpio;

console.log("Env....", process.env.NODE_ENV);
const led = new Gpio(17, {
                    mode: Gpio.OUTPUT
                });

let dutyCycle = 0;

setInterval(() => {
    led.pwmWrite(dutyCycle);

    dutyCycle += 10;
    if (dutyCycle > 255) {
        dutyCycle = 0;
    }
}, 500);