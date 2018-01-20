script_dir=$(cd `dirname $0` && pwd)

echo $script_dir
cd $1

java -Xmx1024M -cp ./libs/robocode.jar robocode.Robocode -battle $script_dir/battles.battle -results $script_dir/results.txt
