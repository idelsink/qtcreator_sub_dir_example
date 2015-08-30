#include "interfacexy.h"
#include <iostream>
#include "driverx.h"
#include "drivery.h"

interfaceXY::interfaceXY()
{
    driverX driverx;
    driverY drivery;
    std::cout << "Constructor interfaceXY called" << std::endl;
}
