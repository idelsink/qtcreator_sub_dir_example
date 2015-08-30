#include <iostream>
#include <qthread.h>
#include "interfacexy.h"

using namespace std;

int main()
{
    cout << "Project B" << endl;
    cout << "This projects needs interface XY" << endl;
    interfaceXY InterfaceXY;

    //A minimal running time for the application of 1 second. This is only needed for the "Cannot obtain a handle to the inferior: The parameter is incorrect." error
    QObject().thread()->usleep(1000*1000*1);
    return 0;
}

