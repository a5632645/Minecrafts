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

var loc = "mega_fusion";
var meta = 10002;
val mega_fusion = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
            "                                               ",
            "                                               ",
            "                    FCCCCCF                    ",
            "                    FCIBICF                    ",
            "                    FCCCCCF                    ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ", 
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "  FFF                                     FFF  ",
            "  CCC                                     CCC  ",
            "  CIC                                     CIC  ",
            "  CBC                                     CBC  ",
            "  CIC                                     CIC  ",
            "  CCC                                     CCC  ",
            "  FFF                                     FFF  ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                    FCCCCCF                    ",
            "                    FCIBICF                    ",
            "                    FCCCCCF                    ",
            "                                               ",
            "                                               ")
                .aisle(
            "                                               ",
            "                    FCBBBCF                    ",
            "                   CC     CC                   ",
            "                CCCCC     CCCCC                ",
            "              CCCCCCC     CCCCCCC              ",
            "            CCCCCCC FCBBBCF CCCCCCC            ",
            "           CCCCC               CCCCC           ",
            "          CCCC                   CCCC          ",
            "         CCC                       CCC         ",
            "        CCC                         CCC        ",
            "       CCC                           CCC       ",
            "      CCC                             CCC      ",
            "     CCC                               CCC     ",
            "     CCC                               CCC     ",
            "    CCC                                 CCC    ",
            "    CCC                                 CCC    ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "  CCC                                     CCC  ",
            " FCCCF                                   FCCCF ",
            " C   C                                   C   C ",
            " B   B                                   B   B ",
            " B   B                                   B   B ",
            " B   B                                   B   B ",
            " C   C                                   C   C ",
            " FCCCF                                   FCCCF ",
            "  CCC                                     CCC  ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "    CCC                                 CCC    ",
            "    CCC                                 CCC    ",
            "     CCC                               CCC     ",
            "     CCC                               CCC     ",
            "      CCC                             CCC      ",
            "       CCC                           CCC       ",
            "        CCC                         CCC        ",
            "         CCC                       CCC         ",
            "          CCCC                   CCCC          ",
            "           CCCCC               CCCCC           ",
            "            CCCCCCC FCBBBCF CCCCCCC            ",
            "              CCCCCCC     CCCCCCC              ",
            "                CCCCC     CCCCC                ",
            "                   CC     CC                   ",
            "                    FCBBBCF                    ",
            "                                               ")
                .aisle(
            "                    FCCCCCF                    ",
            "                   CC     CC                   ",
            "                CCCCC     CCCCC                ",
            "              CCCCCHHHHHHHHHCCCCC              ",
            "            CCCCHHHCC     CCHHHCCCC            ",
            "           CCCHHCCCCC     CCCCCHHCCC           ",
            "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
            "         CCHCCCC               CCCCHCC         ",
            "        CCHCCC                   CCCHCC        ",
            "       CCHCE                       ECHCC       ",
            "      ECHCC                         CCHCE      ",
            "     CCHCE                           ECHCC     ",
            "    CCHCC                             CCHCC    ",
            "    CCHCC                             CCHCC    ",
            "   CCHCC                               CCHCC   ",
            "   CCHCC                               CCHCC   ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            " CCHCC                                   CCHCC ",
            "FCCHCCF                                 FCCHCCF",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "FCCHCCF                                 FCCHCCF",
            " CCHCC                                   CCHCC ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            "   CCHCC                               CCHCC   ",
            "   CCHCC                               CCHCC   ",
            "    CCHCC                             CCHCC    ",
            "    CCHCC                             CCHCC    ",
            "     CCHCE                           ECHCC     ",
            "      ECHCC                         CCHCE      ",
            "       CCHCE                       ECHCC       ",
            "        CCHCCC                   CCCHCC        ",
            "         CCHCCCC               CCCCHCC         ",
            "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
            "           CCCHHCCCCC     CCCCCHHCCC           ",
            "            CCCCHHHCC     CCHHHCCCC            ",
            "              CCCCCHHHHHHHHHCCCCC              ",
            "                CCCCC     CCCCC                ",
            "                   CC     CC                   ",
            "                    FCCCCCF                    ")
                .aisle(
            "                    FCIBICF                    ",
            "                   CC     CC                   ",
            "                CCCHHHHHHHHHCCC                ",
            "              CCHHHHHHHHHHHHHHHCC              ",
            "            CCHHHHHHHHHHHHHHHHHHHCC            ",
            "           CHHHHHHHCC     CCHHHHHHHC           ",
            "          CHHHHHCCC FCI~ICF CCCHHHHHC          ",
            "         CHHHHCC               CCHHHHC         ",
            "        CHHHCC                   CCHHHC        ",
            "       CHHHC                       CHHHC       ",
            "      CHHHC                         CHHHC      ",
            "     CHHHC                           CHHHC     ",
            "    CHHHC                             CHHHC    ",
            "    CHHHC                             CHHHC    ",
            "   CHHHC                               CHHHC   ",
            "   CHHHC                               CHHHC   ",
            "  CHHHC                                 CHHHC  ",
            "  CHHHC                                 CHHHC  ",
            "  CHHHC                                 CHHHC  ",
            " CHHHC                                   CHHHC ",
            "FCHHHCF                                 FCHHHCF",
            "C HHH C                                 C HHH C",
            "I HHH I                                 I HHH I",
            "B HHH B                                 B HHH B",
            "I HHH I                                 I HHH I",
            "C HHH C                                 C HHH C",
            "FCHHHCF                                 FCHHHCF",
            " CHHHC                                   CHHHC ",
            "  CHHHC                                 CHHHC  ",
            "  CHHHC                                 CHHHC  ",
            "  CHHHC                                 CHHHC  ",
            "   CHHHC                               CHHHC   ",
            "   CHHHC                               CHHHC   ",
            "    CHHHC                             CHHHC    ",
            "    CHHHC                             CHHHC    ",
            "     CHHHC                           CHHHC     ",
            "      CHHHC                         CHHHC      ",
            "       CHHHC                       CHHHC       ",
            "        CHHHCC                   CCHHHC        ",
            "         CHHHHCC               CCHHHHC         ",
            "          CHHHHHCCC FCIBICF CCCHHHHHC          ",
            "           CHHHHHHHCC     CCHHHHHHHC           ",
            "            CCHHHHHHHHHHHHHHHHHHHCC            ",
            "              CCHHHHHHHHHHHHHHHCC              ",
            "                CCCHHHHHHHHHCCC                ",
            "                   CC     CC                   ",
            "                    FCIBICF                    ")
            .aisle(
            "                    FCCCCCF                    ",
            "                   CC     CC                   ",
            "                CCCCC     CCCCC                ",
            "              CCCCCHHHHHHHHHCCCCC              ",
            "            CCCCHHHCC     CCHHHCCCC            ",
            "           CCCHHCCCCC     CCCCCHHCCC           ",
            "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
            "         CCHCCCC               CCCCHCC         ",
            "        CCHCCC                   CCCHCC        ",
            "       CCHCE                       ECHCC       ",
            "      ECHCC                         CCHCE      ",
            "     CCHCE                           ECHCC     ",
            "    CCHCC                             CCHCC    ",
            "    CCHCC                             CCHCC    ",
            "   CCHCC                               CCHCC   ",
            "   CCHCC                               CCHCC   ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            " CCHCC                                   CCHCC ",
            "FCCHCCF                                 FCCHCCF",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "C  H  C                                 C  H  C",
            "FCCHCCF                                 FCCHCCF",
            " CCHCC                                   CCHCC ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            "  CCHCC                                 CCHCC  ",
            "   CCHCC                               CCHCC   ",
            "   CCHCC                               CCHCC   ",
            "    CCHCC                             CCHCC    ",
            "    CCHCC                             CCHCC    ",
            "     CCHCE                           ECHCC     ",
            "      ECHCC                         CCHCE      ",
            "       CCHCE                       ECHCC       ",
            "        CCHCCC                   CCCHCC        ",
            "         CCHCCCC               CCCCHCC         ",
            "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
            "           CCCHHCCCCC     CCCCCHHCCC           ",
            "            CCCCHHHCC     CCHHHCCCC            ",
            "              CCCCCHHHHHHHHHCCCCC              ",
            "                CCCCC     CCCCC                ",
            "                   CC     CC                   ",
            "                    FCCCCCF                    ")
            .aisle(
            "                                               ",
            "                    FCBBBCF                    ",
            "                   CC     CC                   ",
            "                CCCCC     CCCCC                ",
            "              CCCCCCC     CCCCCCC              ",
            "            CCCCCCC FCBBBCF CCCCCCC            ",
            "           CCCCC               CCCCC           ",
            "          CCCC                   CCCC          ",
            "         CCC                       CCC         ",
            "        CCC                         CCC        ",
            "       CCC                           CCC       ",
            "      CCC                             CCC      ",
            "     CCC                               CCC     ",
            "     CCC                               CCC     ",
            "    CCC                                 CCC    ",
            "    CCC                                 CCC    ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "  CCC                                     CCC  ",
            " FCCCF                                   FCCCF ",
            " C   C                                   C   C ",
            " B   B                                   B   B ",
            " B   B                                   B   B ",
            " B   B                                   B   B ",
            " C   C                                   C   C ",
            " FCCCF                                   FCCCF ",
            "  CCC                                     CCC  ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "   CCC                                   CCC   ",
            "    CCC                                 CCC    ",
            "    CCC                                 CCC    ",
            "     CCC                               CCC     ",
            "     CCC                               CCC     ",
            "      CCC                             CCC      ",
            "       CCC                           CCC       ",
            "        CCC                         CCC        ",
            "         CCC                       CCC         ",
            "          CCCC                   CCCC          ",
            "           CCCCC               CCCCC           ",
            "            CCCCCCC FCBBBCF CCCCCCC            ",
            "              CCCCCCC     CCCCCCC              ",
            "                CCCCC     CCCCC                ",
            "                   CC     CC                   ",
            "                    FCBBBCF                    ",
            "                                               ")
            .aisle(
            "                                               ",
            "                                               ",
            "                    FCCCCCF                    ",
            "                    FCIBICF                    ",
            "                    FCCCCCF                    ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ", 
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "  FFF                                     FFF  ",
            "  CCC                                     CCC  ",
            "  CIC                                     CIC  ",
            "  CBC                                     CBC  ",
            "  CIC                                     CIC  ",
            "  CCC                                     CCC  ",
            "  FFF                                     FFF  ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                                               ",
            "                    FCCCCCF                    ",
            "                    FCIBICF                    ",
            "                    FCCCCCF                    ",
            "                                               ",
            "                                               ")
				.where("~", IBlockMatcher.controller(loc))
                .where("C", <metastate:gtadditions:ga_fusion_casing:1>)
                .where("H", <metastate:gtadditions:ga_fusion_casing:6>)
                .where("B", <metastate:gtadditions:ga_transparent_casing:6>)
                .whereOr("I",
                //记得改成锇玻璃
                <metastate:gtadditions:ga_fusion_casing:1>,
                IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.EXPORT_FLUIDS
                )).
                whereOr("E",
                //记得改成锇玻璃
                <metastate:gtadditions:ga_fusion_casing:1>,
                IBlockMatcher.abilityPartPredicate(
                MultiblockAbility.INPUT_ENERGY
                ))
                .where("F",<metastate:gregtech:multiblock_casing:1>)
                .build())
.addDesign(
	FactoryMultiblockShapeInfo.start()
	.aisle(
        "                                               ",
        "                                               ",
        "                    FCCCCCF                    ",
        "                    FCIBICF                    ",
        "                    FCCCCCF                    ",
        "                                               ",
        "                                               ")
.aisle(
        "                                               ",
        "                    FCBBBCF                    ",
        "                   CC     CC                   ",
        "                   CC     CC                   ",
        "                   CC     CC                   ",
        "                    FCBBBCF                    ",
        "                                               ")
.aisle(
        "                    FCCCCCF                    ",
        "                   CC     CC                   ",
        "                CCCCC     CCCCC                ",
        "                CCCHHHHHHHHHCCC                ",
        "                CCCCC     CCCCC                ",
        "                   CC     CC                   ",
        "                    FCCCCCF                    ")
.aisle(
        "                    FCIBICF                    ",
        "                CCCCC     CCCCC                ",
        "              CCCCCHHHHHHHHHCCCCC              ",
        "              CCHHHHHHHHHHHHHHHCC              ",
        "              CCCCCHHHHHHHHHCCCCC              ",
        "                CCCCC     CCCCC                ",
        "                    FCIBICF                    ")
.aisle(
        "                    FCCCCCF                    ",
        "              CCCCCCC     CCCCCCC              ",
        "            CCCCHHHCC     CCHHHCCCC            ",
        "            CCHHHHHHHHHHHHHHHHHHHCC            ",
        "            CCCCHHHCC     CCHHHCCCC            ",
        "              CCCCCCC     CCCCCCC              ",
        "                    FCCCCCF                    ")
.aisle(
        "                                               ",
        "            CCCCCCC FCBBBCF CCCCCCC            ",
        "           CCCHHCCCCC     CCCCCHHCCC           ",
        "           CHHHHHHHCC     CCHHHHHHHC           ",
        "           CCCHHCCCCC     CCCCCHHCCC           ",
        "            CCCCCCC FCBBBCF CCCCCCC            ",
        "                                               ")
.aisle(
        "                                               ",
        "           CCCCC               CCCCC           ",
        "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
        "          CHHHHHCCC FCIBICF CCCHHHHHC          ",
        "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
        "           CCCCC               CCCCC           ",
        "                                               ")
.aisle(
        "                                               ",
        "          CCCC                   CCCC          ",
        "         CCHCCCC               CCCCHCC         ",
        "         CHHHHCC               CCHHHHC         ",
        "         CCHCCCC               CCCCHCC         ",
        "          CCCC                   CCCC          ",
        "                                               ")
.aisle(
        "                                               ",
        "         CCC                       CCC         ",
        "        CCHCCC                   CCCHCC        ",
        "        CHHHCC                   CCHHHC        ",
        "        CCHCCC                   CCCHCC        ",
        "         CCC                       CCC         ",
        "                                               ")
.aisle(
        "                                               ",
        "        CCC                         CCC        ",
        "       CCHCE                       ECHCC       ",
        "       CHHHC                       CHHHC       ",
        "       CCHCE                       ECHCC       ",
        "        CCC                         CCC        ",
        "                                               ")
.aisle(
        "                                               ",
        "       CCC                           CCC       ",
        "      ECHCC                         CCHCE      ",
        "      CHHHC                         CHHHC      ",
        "      ECHCC                         CCHCE      ",
        "       CCC                           CCC       ",
        "                                               ")
.aisle(
        "                                               ",
        "      CCC                             CCC      ",
        "     CCHCE                           ECHCC     ",
        "     CHHHC                           CHHHC     ",
        "     CCHCE                           ECHCC     ",
        "      CCC                             CCC      ",
        "                                               ")
.aisle(
        "                                               ",
        "     CCC                               CCC     ",
        "    CCHCC                             CCHCC    ",
        "    CHHHC                             CHHHC    ",
        "    CCHCC                             CCHCC    ",
        "     CCC                               CCC     ",
        "                                               ")
.aisle(
        "                                               ",
        "     CCC                               CCC     ",
        "    CCHCC                             CCHCC    ",
        "    CHHHC                             CHHHC    ",
        "    CCHCC                             CCHCC    ",
        "     CCC                               CCC     ",
        "                                               ")
.aisle(
        "                                               ",
        "    CCC                                 CCC    ",
        "   CCHCC                               CCHCC   ",
        "   CHHHC                               CHHHC   ",
        "   CCHCC                               CCHCC   ",
        "    CCC                                 CCC    ",
        "                                               ")
.aisle(
        "                                               ",
        "    CCC                                 CCC    ",
        "   CCHCC                               CCHCC   ",
        "   CHHHC                               CHHHC   ",
        "   CCHCC                               CCHCC   ",
        "    CCC                                 CCC    ",
        "                                               ")
.aisle(
        "                                               ",
        "   CCC                                   CCC   ",
        "  CCHCC                                 CCHCC  ",
        "  CHHHC                                 CHHHC  ",
        "  CCHCC                                 CCHCC  ",
        "   CCC                                   CCC   ",
        "                                               ")
.aisle(
        "                                               ",
        "   CCC                                   CCC   ",
        "  CCHCC                                 CCHCC  ",
        "  CHHHC                                 CHHHC  ",
        "  CCHCC                                 CCHCC  ",
        "   CCC                                   CCC   ",
        "                                               ")
.aisle(
        "                                               ",
        "   CCC                                   CCC   ",
        "  CCHCC                                 CCHCC  ",
        "  CHHHC                                 CHHHC  ",
        "  CCHCC                                 CCHCC  ",
        "   CCC                                   CCC   ",
        "                                               ")
.aisle(
        "                                               ",
        "  CCC                                     CCC  ",
        " CCHCC                                   CCHCC ",
        " CHHHC                                   CHHHC ",
        " CCHCC                                   CCHCC ",
        "  CCC                                     CCC  ",
        "                                               ")
.aisle(
        "  FFF                                     FFF  ",
        " FCCCF                                   FCCCF ",
        "FCCHCCF                                 FCCHCCF",
        "FCHHHCF                                 FCHHHCF",
        "FCCHCCF                                 FCCHCCF",
        " FCCCF                                   FCCCF ",
        "  FFF                                     FFF  ")
.aisle(
        "  CCC                                     CCC  ",
        " C   C                                   C   C ",
        "C  H  C                                 C  H  C",
        "C HHH C                                 C HHH C",
        "C  H  C                                 C  H  C",
        " C   C                                   C   C ",
        "  CCC                                     CCC  ")
.aisle(
        "  CIC                                     CIC  ",
        " B   B                                   B   B ",
        "C  H  C                                 C  H  C",
        "I HHH I                                 I HHH I",
        "C  H  C                                 C  H  C",
        " B   B                                   B   B ",
        "  CIC                                     CIC  ")
.aisle(
        "  CBC                                     CBC  ",
        " B   B                                   B   B ",
        "C  H  C                                 C  H  C",
        "B HHH B                                 ~ HHH B",
        "C  H  C                                 C  H  C",
        " B   B                                   B   B ",
        "  CBC                                     CBC  ")
.aisle(
        "  CIC                                     CIC  ",
        " B   B                                   B   B ",
        "C  H  C                                 C  H  C",
        "I HHH I                                 I HHH I",
        "C  H  C                                 C  H  C",
        " B   B                                   B   B ",
        "  CIC                                     CIC  ")
.aisle(
        "  CCC                                     CCC  ",
        " C   C                                   C   C ",
        "C  H  C                                 C  H  C",
        "C HHH C                                 C HHH C",
        "C  H  C                                 C  H  C",
        " C   C                                   C   C ",
        "  CCC                                     CCC  ")
.aisle(
        "  FFF                                     FFF  ",
        " FCCCF                                   FCCCF ",
        "FCCHCCF                                 FCCHCCF",
        "FCHHHCF                                 FCHHHCF",
        "FCCHCCF                                 FCCHCCF",
        " FCCCF                                   FCCCF ",
        "  FFF                                     FFF  ")
.aisle(
        "                                               ",
        "  CCC                                     CCC  ",
        " CCHCC                                   CCHCC ",
        " CHHHC                                   CHHHC ",
        " CCHCC                                   CCHCC ",
        "  CCC                                     CCC  ",
        "                                               ")
.aisle(
        "                                               ",
        "   CCC                                   CCC   ",
        "  CCHCC                                 CCHCC  ",
        "  CHHHC                                 CHHHC  ",
        "  CCHCC                                 CCHCC  ",
        "   CCC                                   CCC   ",
        "                                               ")
.aisle(
        "                                               ",
        "   CCC                                   CCC   ",
        "  CCHCC                                 CCHCC  ",
        "  CHHHC                                 CHHHC  ",
        "  CCHCC                                 CCHCC  ",
        "   CCC                                   CCC   ",
        "                                               ")
.aisle(
        "                                               ",
        "   CCC                                   CCC   ",
        "  CCHCC                                 CCHCC  ",
        "  CHHHC                                 CHHHC  ",
        "  CCHCC                                 CCHCC  ",
        "   CCC                                   CCC   ",
        "                                               ")
.aisle(
        "                                               ",
        "    CCC                                 CCC    ",
        "   CCHCC                               CCHCC   ",
        "   CHHHC                               CHHHC   ",
        "   CCHCC                               CCHCC   ",
        "    CCC                                 CCC    ",
        "                                               ")
.aisle(
        "                                               ",
        "    CCC                                 CCC    ",
        "   CCHCC                               CCHCC   ",
        "   CHHHC                               CHHHC   ",
        "   CCHCC                               CCHCC   ",
        "    CCC                                 CCC    ",
        "                                               ")
.aisle(
        "                                               ",
        "     CCC                               CCC     ",
        "    CCHCC                             CCHCC    ",
        "    CHHHC                             CHHHC    ",
        "    CCHCC                             CCHCC    ",
        "     CCC                               CCC     ",
        "                                               ")
.aisle(
        "                                               ",
        "     CCC                               CCC     ",
        "    CCHCC                             CCHCC    ",
        "    CHHHC                             CHHHC    ",
        "    CCHCC                             CCHCC    ",
        "     CCC                               CCC     ",
        "                                               ")
.aisle(
        "                                               ",
        "      CCC                             CCC      ",
        "     CCHCE                           ECHCC     ",
        "     CHHHC                           CHHHC     ",
        "     CCHCE                           ECHCC     ",
        "      CCC                             CCC      ",
        "                                               ")
.aisle(
        "                                               ",
        "       CCC                           CCC       ",
        "      ECHCC                         CCHCE      ",
        "      CHHHC                         CHHHC      ",
        "      ECHCC                         CCHCE      ",
        "       CCC                           CCC       ",
        "                                               ")
.aisle(
        "                                               ",
        "        CCC                         CCC        ",
        "       CCHCE                       ECHCC       ",
        "       CHHHC                       CHHHC       ",
        "       CCHCE                       ECHCC       ",
        "        CCC                         CCC        ",
        "                                               ")
.aisle(
        "                                               ",
        "         CCC                       CCC         ",
        "        CCHCCC                   CCCHCC        ",
        "        CHHHCC                   CCHHHC        ",
        "        CCHCCC                   CCCHCC        ",
        "         CCC                       CCC         ",
        "                                               ")
.aisle(
        "                                               ",
        "          CCCC                   CCCC          ",
        "         CCHCCCC               CCCCHCC         ",
        "         CHHHHCC               CCHHHHC         ",
        "         CCHCCCC               CCCCHCC         ",
        "          CCCC                   CCCC          ",
        "                                               ")
.aisle(
        "                                               ",
        "           CCCCC               CCCCC           ",
        "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
        "          CHHHHHCCC FCIBICF CCCHHHHHC          ",
        "          ECHHCCCCC FCCCCCF CCCCCHHCE          ",
        "           CCCCC               CCCCC           ",
        "                                               ")
.aisle(
        "                                               ",
        "            CCCCCCC FCBBBCF CCCCCCC            ",
        "           CCCHHCCCCC     CCCCCHHCCC           ",
        "           CHHHHHHHCC     CCHHHHHHHC           ",
        "           CCCHHCCCCC     CCCCCHHCCC           ",
        "            CCCCCCC FCBBBCF CCCCCCC            ",
        "                                               ")
.aisle(
        "                    FCCCCCF                    ",
        "              CCCCCCC     CCCCCCC              ",
        "            CCCCHHHCC     CCHHHCCCC            ",
        "            CCHHHHHHHHHHHHHHHHHHHCC            ",
        "            CCCCHHHCC     CCHHHCCCC            ",
        "              CCCCCCC     CCCCCCC              ",
        "                    FCCCCCF                    ")
.aisle(
        "                    FCIBICF                    ",
        "                CCCCC     CCCCC                ",
        "              CCCCCHHHHHHHHHCCCCC              ",
        "              CCHHHHHHHHHHHHHHHCC              ",
        "              CCCCCHHHHHHHHHCCCCC              ",
        "                CCCCC     CCCCC                ",
        "                    FCIBICF                    ")
.aisle(
        "                    FCCCCCF                    ",
        "                   CC     CC                   ",
        "                CCCCC     CCCCC                ",
        "                CCCHHHHHHHHHCCC                ",
        "                CCCCC     CCCCC                ",
        "                   CC     CC                   ",
        "                    FCCCCCF                    ")
.aisle(
        "                                               ",
        "                    FCBBBCF                    ",
        "                   CC     CC                   ",
        "                   CC     CC                   ",
        "                   CC     CC                   ",
        "                    FCBBBCF                    ",
        "                                               ")
.aisle(
        "                                               ",
        "                                               ",
        "                    FCCCCCF                    ",
        "                    FCIBICF                    ",
        "                    FCCCCCF                    ",
        "                                               ",
        "                                               ")
				.where("~", IBlockInfo.controller(loc))
                .where("C", <metastate:gtadditions:ga_fusion_casing:1>)
                .where("H", <metastate:gtadditions:ga_fusion_casing:6>)
                .where("B", <metastate:gtadditions:ga_transparent_casing:6>)
                .where("I", MetaTileEntities.FLUID_IMPORT_HATCH[8], IFacing.west())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[8], IFacing.west())
                .where("F", <metastate:gregtech:multiblock_casing:1>)
.build()
)
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("gregtech:blocks/casings/fusion/machine_casing_fusion_glass"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

//1
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:deuterium> * 16000,<liquid:tritium> * 16000)
.fluidOutputs(<liquid:plasma.helium> * 16000)
.EUt(4096)
.duration(2048)
.buildAndRegister();

//2
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:helium3> * 16000,<liquid:deuterium> * 16000)
.fluidOutputs(<liquid:plasma.helium> * 16000)
.EUt(2048)
.duration(2048)
.buildAndRegister();

//3
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:helium3> * 16000,<liquid:fluorine> * 16000)
.fluidOutputs(<liquid:plasma.potassium> * 16000)
.EUt(2048)
.duration(2048)
.buildAndRegister();

//4
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:carbon> * 16000,<liquid:helium3> * 16000)
.fluidOutputs(<liquid:plasma.oxygen> * 16000)
.EUt(4096)
.duration(4096)
.buildAndRegister();

//5
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:helium3> * 16000,<liquid:fluorine> * 16000)
.fluidOutputs(<liquid:plasma.potassium> * 16000)
.EUt(16384)
.duration(4096)
.buildAndRegister();

//6
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:silicon> * 2048,<liquid:magnesium> * 2048)
.fluidOutputs(<liquid:plasma.iron> * 16000)
.EUt(8192)
.duration(4096)
.buildAndRegister();

//7
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:fluorine> * 16000,<liquid:potassium> * 2048)
.fluidOutputs(<liquid:plasma.iron> * 16000)
.EUt(32768)
.duration(2048)
.buildAndRegister();

//8
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:beryllium> * 2048,<liquid:tungsten> * 2048)
.fluidOutputs(<liquid:platinum> * 2048)
.EUt(32768)
.duration(4096)
.buildAndRegister();

//9
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:neodymium> * 2048,<liquid:hydrogen> * 6144)
.fluidOutputs(<liquid:europium> * 2048)
.EUt(24576)
.duration(8192)
.buildAndRegister();

//10
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:lutetium> * 2048,<liquid:chrome> * 2048)
.fluidOutputs(<liquid:americium> * 2048)
.EUt(49152)
.duration(12288)
.buildAndRegister();

//11
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:plutonium> * 2048,<liquid:thorium> * 2048)
.fluidOutputs(<liquid:naquadah> * 2048)
.EUt(32768)
.duration(8192)
.buildAndRegister();

//12
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:tungsten> * 2048,<liquid:helium> * 2048)
.fluidOutputs(<liquid:osmium> * 2048)
.EUt(24578)
.duration(8192)
.buildAndRegister();

//13
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:manganese> * 2048,<liquid:hydrogen> * 2048)
.fluidOutputs(<liquid:iron> * 2048)
.EUt(8192)
.duration(8192)
.buildAndRegister();

//14
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:mercury> * 2048,<liquid:magnesium> * 2048)
.fluidOutputs(<liquid:uranium> * 2048)
.EUt(49152)
.duration(8192)
.buildAndRegister();

//15
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:gold> * 2048,<liquid:aluminium> * 2048)
.fluidOutputs(<liquid:uranium> * 2048)
.EUt(49152)
.duration(8192)
.buildAndRegister();

//16
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:nickel> * 73728,<liquid:polonium> * 73728)
.fluidOutputs(<liquid:copernicium> * 73728)
.EUt(49152)
.duration(16384)
.buildAndRegister();

//17
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:vanadium> * 2048,<liquid:hydrogen> * 16000)
.fluidOutputs(<liquid:chrome> * 2048)
.EUt(24576)
.duration(8192)
.buildAndRegister();

//18
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:tantalum> * 2048,<liquid:tritium> * 2048)
.fluidOutputs(<liquid:tungsten> * 2048)
.EUt(24576)
.duration(4096)
.buildAndRegister();

//19
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:silver> * 2048,<liquid:lithium> * 2048)
.fluidOutputs(<liquid:indium> * 2048)
.EUt(24576)
.duration(4096)
.buildAndRegister();

//20
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:naquadah_enriched> * 1920,<liquid:radon> * 16000)
.fluidOutputs(<liquid:naquadria> * 384)
.EUt(49152)
.duration(8192)
.buildAndRegister();

//21
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:lanthanum> * 36864,<liquid:silicon> * 36864)
.fluidOutputs(<liquid:lutetium> * 36864)
.EUt(8192)
.duration(2048)
.buildAndRegister();

//22
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:plutonium> * 18432,<liquid:calcium> * 18432)
.fluidOutputs(<liquid:seaborgium> * 36864)
.EUt(75000)
.duration(12800)
.buildAndRegister();

//23
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:carbon_12> * 16000,<liquid:carbon_12> * 16000)
.fluidOutputs(<liquid:plasma.neon> * 16000)
.EUt(7680)
.duration(12800)
.buildAndRegister();

//24
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:polonium> * 36864,<liquid:chrome> * 36864)
.fluidOutputs(<liquid:meitnerium> * 73728)
.EUt(75000)
.duration(12800)
.buildAndRegister();

//25
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:americium> * 36864,<liquid:titanium> * 36864)
.fluidOutputs(<liquid:tennessine> * 73728)
.EUt(75000)
.duration(12800)
.buildAndRegister();

//26
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:plutonium> * 36864,<liquid:titanium> * 36864)
.fluidOutputs(<liquid:livermorium> * 73728)
.EUt(75000)
.duration(12800)
.buildAndRegister();

//27
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:neptunium> * 36864,<liquid:titanium> * 36864)
.fluidOutputs(<liquid:moscovium> * 73728)
.EUt(75000)
.duration(12800)
.buildAndRegister();

//28
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:astatine> * 36864,<liquid:nickel> * 36864)
.fluidOutputs(<liquid:nihonium> * 73728)
.EUt(75000)
.duration(12800)
.buildAndRegister();

//29
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:vanadium> * 36864,<liquid:radium> * 36864)
.fluidOutputs(<liquid:roentgenium> * 73728)
.EUt(75000)
.duration(12800)
.buildAndRegister();

//30
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:taranium_enriched_liquid_helium3> * 128000,<liquid:helium3> * 128000)
.fluidOutputs(<liquid:taranium_rich_dusty_helium_plasma> * 38400)
.EUt(7680)
.duration(20480)
.buildAndRegister();

//31
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:helium> * 2048,<liquid:uranium> * 2048)
.fluidOutputs(<liquid:plutonium> * 2048)
.EUt(32000)
.duration(16384)
.buildAndRegister();

//32
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:neon> * 18432,<liquid:plutonium> * 18432)
.fluidOutputs(<liquid:rutherfordium> * 18432)
.EUt(16384)
.duration(8192)
.buildAndRegister();

//33
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:radon> * 144000,<liquid:gallium> * 18432)
.fluidOutputs(<liquid:duranium> * 18432)
.EUt(24576)
.duration(8192)
.buildAndRegister();

//34
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:duranium> * 36864,<liquid:titanium> * 55296)
.fluidOutputs(<liquid:tritanium> * 18432)
.EUt(32768)
.duration(8192)
.buildAndRegister();

//35
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:mercury> * 8192,<liquid:gold> * 8192)
.fluidOutputs(<liquid:plasma.radon> * 64000)
.EUt(32768)
.duration(8192)
.buildAndRegister();

//36
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:neon> * 36864,<liquid:americium> * 36864)
.fluidOutputs(<liquid:dubnium> * 36864)
.EUt(131072)
.duration(8192)
.buildAndRegister();

//ADFR
//1
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:helium> * 96000,<liquid:helium> * 96000)
.fluidOutputs(<liquid:plasma.carbon> * 64000)
.EUt(7000)
.duration(49152)
.buildAndRegister();

//2
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:carbon> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.oxygen> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//3
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:oxygen> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.neon> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//4
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:neon> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.magnesium> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//5
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:magnesium> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.silicon> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//6
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:silicon> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.sulfur> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//7
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:sulfur> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.argon> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//8
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:argon> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.calcium> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//9
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:calcium> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:titanium44_plasma> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//10
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:titanium44> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:chromium48_plasma> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//11
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:calcium_44> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:plasma.titanium> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//12
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:chromium48> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:iron52_plasma> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//13
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:iron52> * 32000,<liquid:helium> * 32000)
.fluidOutputs(<liquid:nickel56_plasma> * 32000)
.EUt(7000)
.duration(16384)
.buildAndRegister();

//92
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:cno_catalyst> * 32000,<liquid:hydrogen> * 163840)
.fluidOutputs(<liquid:helium_rich_cno_plasma> * 32000)
.EUt(8192)
.duration(16384)
.buildAndRegister();

//93
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:uranium> * 32000,<liquid:uranium> * 32000)
.fluidOutputs(<liquid:quasifissioning_plasma> * 32000)
.EUt(600000)
.duration(12800)
.buildAndRegister();

//100
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:carbon_12> * 32000,<liquid:carbon_12> * 32000)
.fluidOutputs(<liquid:plasma.neon> * 32000,<liquid:helium4> * 32000)
.EUt(600000)
.duration(12800)
.buildAndRegister();

//107
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:curium> * 36864,<liquid:sodium> * 36864)
.fluidOutputs(<liquid:bohrium> * 73728)
.EUt(1000000)
.duration(6400)
.buildAndRegister();

//114
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:trinium> * 36864,<liquid:tritanium> * 36864)
.fluidOutputs(<liquid:adamantium> * 73728)
.EUt(2000000)
.duration(12800)
.buildAndRegister();

//121
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:adamantium> * 36864,<liquid:seaborgium> * 36864)
.fluidOutputs(<liquid:vibranium> * 73728)
.EUt(8000000)
.duration(12800)
.buildAndRegister();

//128
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:scandium_titanium50_mix> * 18432,<liquid:radon_radium_mix> * 73728)
.fluidOutputs(<liquid:metastable_hassium> * 73728)
.EUt(900000)
.duration(12800)
.buildAndRegister();

//135
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:curium250> * 18432,<liquid:og_breeding_base> * 64000)
.fluidOutputs(<liquid:hot_oganesson> * 64000)
.EUt(600000)
.duration(12800)
.buildAndRegister();

//142
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:deuterium_superheavy_mix> * 92160,<liquid:heavy_quark_enriched_mix> * 92160)
.fluidOutputs(<liquid:heavy_quark_degenerate_matter> * 92160)
.EUt(1100000)
.duration(12800)
.buildAndRegister();

//149
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:rawchaos> * 36864,<liquid:bohrium> * 36864)
.fluidOutputs(<liquid:plasma.chaos> * 73728)
.EUt(1000000)
.duration(6400)
.buildAndRegister();

//156
mega_fusion.recipeMap.recipeBuilder()
.fluidInputs(<liquid:curium250> * 18432,<liquid:sodium> * 18432)
.fluidOutputs(<liquid:bohrium> * 36864)
.EUt(1000000)
.duration(6400)
.buildAndRegister();