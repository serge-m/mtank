script_dir=$(cd `dirname $0` && pwd)

echo $script_dir
robot_path=$script_dir/../robots/
echo "Robot path=$robot_path"

java -Xmx1024M -cp ./libs/robocode.jar -DROBOTPATH=$robot_path robocode.Robocode -battle $script_dir/battles2.battle -results $script_dir/results.txt
