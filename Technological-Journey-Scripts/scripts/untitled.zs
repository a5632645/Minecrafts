import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import scripts.commonNames;
import mods.gregtech.recipe.PBFRecipeBuilder;
import mods.gtadditions.recipe.Utils;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gregtech.recipe.RecipeMaps;

//Fake QFT
assembly_line.recipeBuilder()
.inputs([<gregtech:machine:4022> * 4,<gtadditions:ga_meta_item:32380> * 16,<gtadditions:ga_meta_item:32374> * 16,<gtadditions:ga_fusion_casing:6> * 32,<gregtech:machine:2512> * 64,<gregtech:machine:2509> * 64,<gregtech:machine:2530> * 64])
.fluidInputs(<liquid:quantumdots> * 32000,<liquid:fullerene_polymer_matrix> * 1152)
.outputs([<gregtech:machine:10001>])
.duration(24000)
.EUt(1145140)
.buildAndRegister();

//QFT casing
assembly_line.recipeBuilder()
.inputs([<gtadditions:ga_quantum_casing> * 1,<gtadditions:ga_meta_item:32373> * 1,<gtadditions:ga_meta_item:32379> * 1,<gtadditions:ga_fusion_casing:5> * 1,<gregtech:ga_cable:737> * 1])
.fluidInputs(<liquid:zylon> * 1152)
.outputs(<contenttweaker:quantum_force_casing> * 1)
.duration(2000)
.EUt(114514)
.buildAndRegister();

//mega fusion
assembly_line.recipeBuilder()
.inputs([<gregtech:machine:2504> * 64,<gregtech:machine:2505> * 48,<gregtech:machine:2506> * 32,<gregtech:machine:3237> * 16,<gtadditions:ga_meta_item:32607> * 4,<gtadditions:ga_meta_item:32425> * 64,<gregtech:wire_coil:7> * 64,<gtadditions:ga_meta_item:32379> * 8,<gregtech:meta_item_2:17716> * 64,<gtadditions:ga_meta_item:1682> * 64])
.fluidInputs(<liquid:metastable_hassium> * 2304,<liquid:superheavy_h_alloy> * 2304,<liquid:metastable_flerovium> * 2304,<liquid:metastable_oganesson> * 2304)
.outputs([<gregtech:machine:10002>])
.duration(6000)
.EUt(8388608)
.buildAndRegister();

//wood_sim
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:32674> * 4,<contenttweaker:wood_sim_casing>,<gregtech:machine:3215> * 2,<gtadditions:ga_multiblock_casing:8>])
.outputs([<gregtech:machine:10003>])
.fluidInputs(<liquid:water> * 16000)
.duration(1200)
.EUt(7600)
.buildAndRegister();

//wood_sim_casing
assembler.recipeBuilder()
.inputs([<gregtech:frame_eglin_steel>,<gregtech:fluid_pipe:192> * 8,<gregtech:meta_item_2:26072> * 2,<gregtech:wire_coil>])
.outputs([<contenttweaker:wood_sim_casing>])
.fluidInputs(<liquid:water> * 1000)
.duration(300)
.EUt(1920)
.buildAndRegister();