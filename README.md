# Qt Creator Subdirectory Example
An example project for a QT Creator project with multiple sub directories.

In my opinion Qt lacks some good documentation/example projects for a subdirectory project with multiple library's.
So here is one. I won't say its is perfect, but for my own purpose, it is.

## Known issues
**Building projects with a dependency tree**  

When, for example, `projectX` has a dependency on `driverX` and `driverX` has a dependency on `driverY`, we see that there is a dependency tree.  
`ProjectX` <-- `driverX` <-- `driverY`  
When something changes in `driverX`, and you build `projectX`, `driverX` will be rebuild because it was changed. However if we change something in `driverY` and we build `ProjectX`, `driverX` with a dependency on `driverY` will not be rebuild. `driverY` will be rebuild, but those changes wont affect `driverX`.  
To **solve** this, the user could do a clean and build or just remove the build files and build it again. I'm working on a solution for this. Untill then, clean and rebuild. :D

# License
This project is licensed under the [GNU GENERAL PUBLIC LICENSE](http://www.gnu.org/licenses/licenses.html). See the [LICENSE](LICENSE.md) file for more information.
