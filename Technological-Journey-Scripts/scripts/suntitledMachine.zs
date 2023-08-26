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

var loc = "quantum_force_former";
var meta = 10001;
val quantum_force_former = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "HHHHH",
                    "HHHHH",
                    "HHHHH",
                    "HHHHH",
                    "HHSHH")
                .aisle(
                    "~HHH~",
                    "HBBBH",
                    "HBBBH",
                    "HBBBH",
                    "~HHH~")
                .aisle(
                    "~HHH~",
                    "HBBBH",
                    "HB~BH",
                    "HBBBH",
                    "~HHH~")
                .aisle(
                    "~HHH~",
                    "HBBBH",
                    "HBBBH",
                    "HBBBH",
                    "~HHH~")
                .aisle(
                    "HHHHH",
                    "HHHHH",
                    "HHHHH",
                    "HHHHH",
                    "HHHHH")
                .whereOr("H", 
                <metastate:contenttweaker:quantum_force_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .where("B", <metastate:gregtech:wire_coil:8>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
        "HHHHH",
        "~HHH~",
        "~HHH~",
        "~HHH~",
        "HHHHH")
.aisle(
        "HHHHH",
        "HBBBH",
        "HBBBH",
        "HBBBH",
        "HHHHH")
.aisle(
        "SHHHH",
        "HBBBH",
        "HB~BH",
        "HBBBH",
        "HHHHH")
.aisle(
        "HHHHH",
        "HBBBH",
        "HBBBH",
        "HBBBH",
        "HHHHH")
.aisle(
        "HHHHH",
        "~HHH~",
        "~HHH~",
        "~HHH~",
        "HHHHH")
                .where("H", <metastate:contenttweaker:quantum_force_casing>)
                .where("B", <metastate:gregtech:wire_coil:8>)
                .where("S", IBlockInfo.controller(loc))
                .where("~", IBlockInfo.EMPTY)
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(6)
                        .maxFluidOutputs(6)
                        .maxInputs(6)
                        .maxOutputs(6)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/quantum_force_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

//无菌培养基
quantum_force_former.recipeMap.recipeBuilder()
.fluidInputs(<liquid:blood> * 128000)
.fluidOutputs(<liquid:sterilized_growth_medium> * 128000)
.duration(1200)
.EUt(2097152)
.buildAndRegister();

//干细胞的并行
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gtadditions:ga_meta_item:32018> * 128)
.fluidInputs(<liquid:sterilized_growth_medium> * 32000)
.outputs(<gtadditions:ga_meta_item:32018> * 512)
.duration(1200)
.EUt(2097152)
.buildAndRegister();

//希瓦氏菌并行
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gtadditions:ga_dust:47> * 128)
.fluidInputs(<liquid:bacterial_growth_medium> * 32000)
.outputs(<gtadditions:ga_dust:47> * 512)
.duration(1200)
.EUt(2097152)
.buildAndRegister();

//细菌培养基
quantum_force_former.recipeMap.recipeBuilder()
.fluidInputs(<liquid:blood> * 128000,<liquid:distilled_water> * 128000)
.fluidOutputs(<liquid:bacterial_growth_medium> * 64000)
.duration(1200)
.EUt(2097152)
.buildAndRegister();

//沙雕三元
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2836> * 2240)
.outputs(<gregtech:meta_item_1:2719> * 480,<gregtech:meta_item_1:2765> * 480,<gregtech:meta_item_1:2759> * 640,<gregtech:meta_item_1:2756> * 640)
.duration(19200)
.EUt(2097152)
.buildAndRegister();

//六氟化?,uhv立场催化?
//镎
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2818> * 2000)
.outputs(<gregtech:meta_item_1:10815> * 600,<gregtech:meta_item_1:10816> * 1000,<gregtech:meta_item_1:10817> * 400)
.duration(67500)
.EUt(960)
.buildAndRegister();

//钚
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2814> * 2000)
.outputs(<gregtech:meta_item_1:10053> * 20,<gregtech:meta_item_1:10812> * 2,<gregtech:meta_item_1:10052> * 1978)
.duration(60000)
.EUt(960)
.buildAndRegister();

//镅
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2002> * 2000)
.outputs(<gregtech:meta_item_1:10809> * 1000,<gregtech:meta_item_1:10810> * 400,<gregtech:meta_item_1:10808> * 600)
.duration(67500)
.EUt(960)
.buildAndRegister();

//锔
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2807> * 2000)
.outputs(<gregtech:meta_item_1:10804> * 20,<gregtech:meta_item_1:10805> * 2,<gregtech:meta_item_1:10803> * 1978)
.duration(60000)
.EUt(960)
.buildAndRegister();

//锫
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2801> * 2000)
.outputs(<gregtech:meta_item_1:10799> * 1000,<gregtech:meta_item_1:10800> * 400,<gregtech:meta_item_1:10798> * 600)
.duration(67500)
.EUt(960)
.buildAndRegister();

//锎
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2797> * 2000)
.outputs(<gregtech:meta_item_1:10794> * 20,<gregtech:meta_item_1:10793> * 2,<gregtech:meta_item_1:10795> * 1978)
.duration(60000)
.EUt(960)
.buildAndRegister();

//Es
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2791> * 2000)
.outputs(<gregtech:meta_item_1:10789> * 1000,<gregtech:meta_item_1:10790> * 400,<gregtech:meta_item_1:10787> * 600)
.duration(67500)
.EUt(960)
.buildAndRegister();

//Fm
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2786> * 2000)
.outputs(<gregtech:meta_item_1:10783> * 20,<gregtech:meta_item_1:10782> * 2,<gregtech:meta_item_1:10784> * 1978)
.duration(60000)
.EUt(960)
.buildAndRegister();

//Md
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2780> * 2000)
.outputs(<gregtech:meta_item_1:10778> * 1000,<gregtech:meta_item_1:10779> * 400,<gregtech:meta_item_1:10777> * 600)
.duration(67500)
.EUt(960)
.buildAndRegister();

//Ti50
quantum_force_former.recipeMap.recipeBuilder()
.fluidInputs(<liquid:titanium_tetrafluoride> * 1000000)
.fluidOutputs(<liquid:titanium50_tetrafluoride> * 51800,<liquid:titanium_tetrafluoride> * 948200)
.EUt(30720)
.duration(21000)
.buildAndRegister();

//乙烯
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2012> * 64)
.fluidInputs(<liquid:hydrogen> * 64000,<liquid:oxygen> * 64000,<liquid:chlorine> * 64000,<liquid:fluorine> * 64000)
.notConsumable(<gtadditions:ga_meta_item:32378>)
.fluidOutputs(<liquid:vinyl_chloride> * 32000,<liquid:ethylene> * 32000,<liquid:styrene> * 32000,<liquid:tetrafluoroethylene> * 32000)
.EUt(2097152)
.duration(1200)
.buildAndRegister();

//橡胶
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2065> * 64,<gregtech:meta_item_1:32627> * 64,<gregtech:meta_item_1:2061> * 64)
.fluidInputs(<liquid:butene> * 64000,<liquid:benzene> * 64000)
.notConsumable(<gtadditions:ga_meta_item:32378>)
.fluidOutputs(<liquid:rubber> * 32000,<liquid:silicon_rubber> * 32000,<liquid:styrene_butadiene_rubber> * 32000)
.EUt(2097152)
.duration(1200)
.buildAndRegister();

//环氧树脂
quantum_force_former.recipeMap.recipeBuilder()
.notConsumable(<gtadditions:ga_meta_item:32378>)
.fluidInputs(<liquid:ethylene> * 64000,<liquid:oxygen> * 64000)
.fluidOutputs(<liquid:epoxid> * 64000)
.EUt(2097152)
.duration(1200)
.buildAndRegister();

//4,4
quantum_force_former.recipeMap.recipeBuilder()
.notConsumable(<gtadditions:ga_meta_item:32379>)
.fluidInputs(<liquid:benzene> * 128000,<liquid:ammonia> * 64000,<liquid:oxygen> * 256000,<liquid:methanol> * 64000,<liquid:toluene> * 64000)
.fluidOutputs(<liquid:polyimide> * 64000)
.EUt(2097152*4)
.duration(1200)
.buildAndRegister();

//PBI
quantum_force_former.recipeMap.recipeBuilder()
.notConsumable(<gtadditions:ga_meta_item:32379>)
.fluidInputs(<liquid:ammonia>*128000,<liquid:ethylene>*64000,<liquid:benzene>*192000,<liquid:oxygen>*192000,<liquid:nitric_acid>*128000)
.fluidOutputs(<liquid:polybenzimidazole>*64000)
.EUt(2097152*4)
.duration(1200)
.buildAndRegister();

//PEEK
quantum_force_former.recipeMap.recipeBuilder()
.notConsumable(<gtadditions:ga_meta_item:32379>)
.fluidInputs(<liquid:benzene>*192000,<liquid:water>*64000)
.fluidOutputs(<liquid:polyetheretherketone>*64000)
.EUt(2097152*4)
.duration(1200)
.buildAndRegister();

//zylon
quantum_force_former.recipeMap.recipeBuilder()
.notConsumable(<gregtech:meta_item_1:2729>)
.fluidInputs(<liquid:methanol>*64000,<liquid:toluene>*64000,<liquid:nitric_acid>*128000,<liquid:water>*64000,<liquid:benzene>*64000)
.outputs(<gregtech:meta_item_1:2729>*64)
.EUt(31457280)
.duration(1200)
.buildAndRegister();

//富勒烯
quantum_force_former.recipeMap.recipeBuilder()
.notConsumable(<gtadditions:ga_dust:68>)
.fluidInputs(<liquid:naphtalene>*64000,<liquid:ethylbenzene>*64000)
.outputs(<gtadditions:ga_dust:68>*64)
.EUt(31457280)
.duration(1200)
.buildAndRegister();

//钯-富勒烯
quantum_force_former.recipeMap.recipeBuilder()
.notConsumable(<gtadditions:ga_dust:80>)
.inputs(<gtadditions:ga_dust:69>*64,<gregtech:meta_item_1:2049>*64,<appliedenergistics2:material:49>*64)
.fluidInputs(<liquid:benzene>*128000,<liquid:methanol>*64000,<liquid:ammonia>*64000,<liquid:acetic_acid>*64000)
.outputs(<gtadditions:ga_dust:80>*64)
.EUt(62914560)
.duration(1200)
.buildAndRegister();

//铌酸锂粒子
quantum_force_former.recipeMap.recipeBuilder()
.inputs(<gregtech:meta_item_1:2036>*64,<gregtech:meta_item_1:2045>*64)
.fluidInputs(<liquid:oxygen>*64000)
.outputs(<gregtech:meta_item_1:2685>*32,<gtadditions:ga_dust:326>*32)
.EUt(62914560)
.duration(1200)
.buildAndRegister();