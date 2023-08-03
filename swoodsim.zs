import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

var loc = "wood_sim";
var meta = 10003;

val wood_sim = Builder.start(loc, meta)
.withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
            .aisle(
                "CCC",
                "CCC",
                "CCC")
            .aisle(
                "CCC",
                "C C",
                "CSC")
            .aisle(
                "CCC",
                "CCC",
                "CCC")
            .whereOr("C",
                <metastate:contenttweaker:wood_sim_casing>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.EXPORT_ITEMS,
                    MultiblockAbility.IMPORT_ITEMS,
                    MultiblockAbility.INPUT_ENERGY
                ))
            .where("S", IBlockMatcher.controller(loc))
            .where(" ", IBlockMatcher.ANY)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
        "CCC",
        "CSC",
        "CCC")
.aisle(
        "CCC",
        "C C",
        "CCC")
.aisle(
        "CCC",
        "CCC",
        "CCC")
            .where("C", <metastate:contenttweaker:wood_sim_casing>)
            .where("S", IBlockInfo.controller(loc))
            .where(" ", IBlockInfo.EMPTY)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxOutputs(6)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/wood_sim_casing"))
.buildAndRegister() as Multiblock;

var create = function(item as IItemStack, t as int) as int {
	val pmul = pow(4,t - 1) as int;
	val tier = (t * 16) as int;

	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:reeds>)
	.notConsumable(item)
	.chancedOutput(<minecraft:reeds> * (5 * tier),9500,0)
	.chancedOutput(<minecraft:reeds> * tier,5000,0)
	.chancedOutput(<minecraft:sugar> * (10 * tier),5000,0)
	.duration(900)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<randomthings:spectresapling>)
	.notConsumable(item)
	.chancedOutput(<randomthings:spectresapling> * tier,5000,0)
	.chancedOutput(<randomthings:spectrelog> * (5 * tier),9500,0)
	.chancedOutput(<randomthings:ingredient:2> * (10 * tier),5000,0)
	.duration(900)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:sapling:1>)
	.notConsumable(item)
	.chancedOutput(<minecraft:sapling:1> * tier,5000,0)
	.chancedOutput(<minecraft:log:1> * (5 * tier),9500,0)
	.duration(900)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<advancedrocketry:aliensapling>)
	.notConsumable(item)
	.chancedOutput(<advancedrocketry:aliensapling> * tier,5000,0)
	.chancedOutput(<advancedrocketry:charcoallog> * (32 * tier),6000,0)
	.chancedOutput(<advancedrocketry:alienwood> * (5 * tier),9500,0)
	.chancedOutput(<minecraft:apple> * (6 * tier),7000,0)
	.chancedOutput(<gregtech:meta_item_1:32627> * (6 * tier),7000,0)
	.duration(900)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:sapling>)
	.notConsumable(item)
	.chancedOutput(<minecraft:sapling> * tier,5000,0)
	.chancedOutput(<minecraft:log> * (5 * tier),9500,0)
	.chancedOutput(<minecraft:apple> * tier,5000,0)
	.duration(600)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:sapling:5>)
	.notConsumable(item)
	.chancedOutput(<minecraft:sapling:5> * tier,5000,0)
	.chancedOutput(<minecraft:log2:1> * (5 * tier),9500,0)
	.duration(600)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:sapling:2>)
	.notConsumable(item)
	.chancedOutput(<minecraft:sapling:2> * tier,5000,0)
	.chancedOutput(<minecraft:log:2> * (5 * tier),9500,0)
	.duration(600)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:sapling:3>)
	.notConsumable(item)
	.chancedOutput(<minecraft:sapling:3> * tier,5000,0)
	.chancedOutput(<minecraft:log:3> * (5 * tier),9500,0)
	.chancedOutput(<minecraft:dye:3> * (10 * tier),9500,0)
	.duration(600)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:chorus_fruit>)
	.notConsumable(item)
	.chancedOutput(<minecraft:chorus_fruit_popped> * tier,5000,0)
	.chancedOutput(<minecraft:chorus_fruit> * (5 * tier),9500,0)
	.chancedOutput(<minecraft:ender_pearl> * tier,100,0)
	.duration(6000)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	wood_sim.recipeMap.recipeBuilder()
	.notConsumable(<minecraft:sapling:4>)
	.notConsumable(item)
	.chancedOutput(<minecraft:sapling:4> * tier,5000,0)
	.chancedOutput(<minecraft:log2> * (5 * tier),9500,0)
	.duration(900)
	.EUt(30 * pmul)
	.buildAndRegister();
	
	return tier;
};

create(<gregtech:meta_item_1:32670>,1);
create(<gregtech:meta_item_1:32671>,2);
create(<gregtech:meta_item_1:32672>,3);
create(<gregtech:meta_item_1:32673>,4);
create(<gregtech:meta_item_1:32674>,5);
create(<gregtech:meta_item_1:32675>,6);
create(<gregtech:meta_item_1:32676>,7);
create(<gregtech:meta_item_1:32677>,8);

create(<gtadditions:ga_meta_item:32378>,9);
create(<gtadditions:ga_meta_item:32379>,10);
create(<gtadditions:ga_meta_item:32380>,11);
create(<gtadditions:ga_meta_item:32381>,12);
create(<gtadditions:ga_meta_item:32382>,13);