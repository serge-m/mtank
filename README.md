Robocode - Template
====
This is a slightly modified version of Norbert Schneider's Robocode Template at: https://github.com/bertschneider/RobocodeTemplate
It contains the Robocode API (version 1.9.3.0) from: http://robocode.sourceforge.net/

This little project can be used as template for your first [Robocode](http://robocode.sourceforge.net/) robots and automated battles.

For example it should be a good starting point for a tournament in your company...

Development preparations or how to build a new robot
----

1. Set the `robotlocation` property in the `pom.xml` to your Robocode robots folder<br>
   In a tournament this could be a network fileshare or some other shared location.
2. Import the Maven project into an IDE of your choice
3. Change the name of the `de.metro.TestRobot` Java and properties file to the name of your robot
4. Set the new classname of your robot in the properties file
5. Implement a superior robot
6. Build the robot jar with the Maven command `mvn clean install`

The name of the output file/jar is generated using the `user.name` Maven variable.
You could also set your own artifact name just make sure it is a unique name.

Battle preparations or how to start a war
----

1. Make sure the robots are _deployed_ into your Robocode robots folder<br>
   If you use a network fileshare to exchange the robots you could create a link to that folder
2. Copy `misc/battles.battle` into your Robocode battles folder
3. Add the classnames of the participating robots to the `selectedRobots` property in the battle file
4. Run the following command in your Robocode folder
   `java -Xmx1024M -cp libs/robocode.jar robocode.Robocode -battle battles\battles.battle -results results.txt`
5. Watch the fight!
###### For a faster development process:
1. Edit `robotlocation` property for **dev profile** adding the `robot` directory path from your robocode installation
2. For seeing a battle between two instances of your robot, run `mvn -Pdev clean install exec:exec`.



Documentation and other links
----

* [Robocode Website](ttp://robocode.sourceforge.net/)
* [Robocode API](http://robocode.sourceforge.net/docs/robocode/)
* [Robocode Getting Started](http://robowiki.net/wiki/Robocode_Basics)
* [Robocode Wiki](http://robowiki.net/wiki/Main_Page)
* [robocode@github](https://github.com/robo-code/robocode)
* [Rock 'em, sock 'em Robocode!](http://www.ibm.com/developerworks/java/library/j-robocode/index.html)
* [Robocode Lessons](http://mark.random-article.com/weber/java/robocode/)

Dependencies
----
As far as I can tell there are no Maven dependencies available. So the Robocode API was installed in a local repository in the project with the following Maven command:

    mvn install:install-file -Dfile=robocode.jar \
        -Dsources=robocode-1.9.3.0-sources.jar \
        -Djavadoc=robocode-1.9.3.0-javadoc.jar \
        -DgroupId=net.sf.robocode
        -DartifactId=robocode.api \
        -Dversion=1.9.3.0 \
        -Dpackaging=jar \
        -DgeneratePom=true \
        -DcreateChecksum=true \
        -DlocalRepositoryPath=lib

The sources can also be found on Github at [github.com/robo-code/robocode](https://github.com/robo-code/robocode).
