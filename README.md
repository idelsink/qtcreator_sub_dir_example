# QtCreator_SubDirExample
A example project for a QT Creator project with multiple sub directories

In my opinion Qt lacks some good documentation/example projects for a subdirectory project with multiple library's.
So here is one. I won't say its is perfect, but for my own purpose, it is.

If you like it, leave a comment.(I literally spent hours fingering out this stuff)


The following structure is used:
SubTestProject
│   common.pri
│   SubTestProject.pro
│
├───ProjectA
│       classa.cpp
│       classa.h
│       main.cpp
│       ProjectA.pro
│
├───ProjectB
│       classb.cpp
│       classb.h
│       ProjectB.pro
│
├───ProjectC
│       classc.cpp
│       classc.h
│       ProjectC.pro
│
└───testProjectB
        main.cpp
        testProjectB.pro

SubTestProjectBuilds
    put_the_build_files_here.txt

In SubTestProject the main project is stored.
In SubTestProjectBuilds the build files from QT Creator need to be placed. (make sure to set this up correctly.)

In the common.pri file are the general settings for al projets. In the example C++11 is enabled and a special function is made. More on this later.
In the Main .pro file all the SUBDIR's are listed. And what is that? Some projects with .depends? (http://doc.qt.io/qt-5/qmake-advanced-usage.html)
With this tag you can say to the compiler, Oi! listen, my projectX is real cool and all but it needs projectY! So now the compiler will make sure that projectY will be build first and than projectX.
Now we created a dependency for projectY.

So projectA needs Project B
testProjectB needs ProjectB and ProjectC
