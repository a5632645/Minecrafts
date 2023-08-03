#priority 2
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;



var SteamPiston = VanillaFactory.createItem("steampiston");
SteamPiston.maxStackSize = 64;
SteamPiston.register();

var SteamMotor = VanillaFactory.createItem("steammotor");
SteamMotor.maxStackSize = 64;
SteamMotor.register();

var certificate_of_being_a_noob = VanillaFactory.createItem("certificate_of_being_a_noob");
certificate_of_being_a_noob.maxStackSize = 1;
certificate_of_being_a_noob.register();

//var exquisite_salt = VanillaFactory.createItem("exquisite_salt");
//exquisite_salt.maxStackSize = 64;
//exquisite_salt.register();

var soulcasing = VanillaFactory.createBlock("soulcasing", <blockmaterial:iron>);
soulcasing.register();

var draconiccasing = VanillaFactory.createBlock("draconiccasing", <blockmaterial:iron>);
draconiccasing.register();

//quantum force here
var quantum_force_casing = VanillaFactory.createBlock("quantum_force_casing", <blockmaterial:iron>);
quantum_force_casing.register();

var awakenedcasing = VanillaFactory.createBlock("awakenedcasing", <blockmaterial:iron>);
awakenedcasing.register();

var chaoticcasing = VanillaFactory.createBlock("chaoticcasing", <blockmaterial:iron>);
chaoticcasing.register();


var RefinedChaosShard = VanillaFactory.createItem("refinedchaosshard");
RefinedChaosShard.maxStackSize = 64;
RefinedChaosShard.register();

var RefinedChaosCrystal = VanillaFactory.createItem("refinedchaoscrystal");
RefinedChaosCrystal.maxStackSize = 64;
RefinedChaosCrystal.register();

var infintycrystal = VanillaFactory.createItem("infintycrystal");
infintycrystal.maxStackSize = 64;
infintycrystal.register();

var eternitycrystal = VanillaFactory.createItem("eternitycrystal");
eternitycrystal.maxStackSize = 64;
eternitycrystal.register();

var eternityingot = VanillaFactory.createItem("eternityingot");
eternityingot.maxStackSize = 64;
eternityingot.register();

var eternityblock = VanillaFactory.createBlock("eternityblock", <blockmaterial:iron>);
eternityblock.register();

//原木
var wood_sim_casing = VanillaFactory.createBlock("wood_sim_casing", <blockmaterial:iron>);
wood_sim_casing.register();
