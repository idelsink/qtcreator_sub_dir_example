#include <iostream>
#include <qthread.h>
#include "interfacex.h"

using namespace std;

int main()
{
    cout << "Project A" << endl;
    cout << "This projects needs interface X" << endl;
    interfaceX InterfaceX;

    //A minimal running time for the application of 1 second. This is only needed for the "Cannot obtain a handle to the inferior: The parameter is incorrect." error
    QObject().thread()->usleep(1000*1000*1);
    return 0;
}

