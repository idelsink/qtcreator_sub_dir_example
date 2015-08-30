#include <iostream>
#include <qthread.h>
#include "interfacexy.h"
#include "drivery.h"

using namespace std;

int main()
{
    cout << "Project C" << endl;
    cout << "This projects needs interfaceXY and driverY" << endl;
    interfaceXY InterfaceXY;
    driverY DriverY;

    //A minimal running time for the application of 1 second. This is only needed for the "Cannot obtain a handle to the inferior: The parameter is incorrect." error
    QObject().thread()->usleep(1000*1000*1);
    return 0;
}

