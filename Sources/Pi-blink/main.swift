// based on https://github.com/uraimo/SwiftyGPIO/tree/master/Examples/CustomGPIO
import Glibc
import SwiftyGPIO

let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
var gp01 = gpios[.P23]!

print("Current Status")
print("Direction: "+gp01.direction.rawValue)
print("Edge: "+gp01.edge.rawValue)
print("Active Low: "+String(gp01.activeLow))
print("Value: "+String(gp01.value))
gp01.direction = .OUT
gp01.value = 1
print("New Status")
print("Direction: "+gp01.direction.rawValue)
print("Edge: "+gp01.edge.rawValue)
print("Active Low: "+String(gp01.activeLow))
print("Value: "+String(gp01.value))

repeat{
	gp01.value = (gp01.value == 0) ? 1 : 0
	usleep(150*1000)
}while(true)
