--fox2 scrape lz
local this={}
this.lookupStrings={
"lz_apr_diamond_S_s10100",
"lz_banana_E0000|lz_banana_E_0000",
"lz_banana_E0000|rt_apr_banana_E_0000",
"lz_banana_E0000|rt_rtn_banana_E_0000",
"lz_banana_I0000|lz_banana_I_0000",
"lz_banana_I0000|rt_apr_banana_I_0000",
"lz_banana_I0000|rt_rtn_banana_I_0000",
"lz_bananaSouth_N0000|lz_bananaSouth_N_0000",
"lz_bananaSouth_N0000|rt_apr_bananaSouth_N0000",
"lz_bananaSouth_N0000|rt_rtn_bananaSouth_N0000",
"lz_bridge_S0000|lz_bridge_S_0000",
"lz_bridge_S0000|rt_apr_bridge_S_0000",
"lz_bridge_S0000|rt_rtn_bridge_S_0000",
"lz_citadelSouth_S0000|lz_citadelSouth_S_0000",
"lz_citadelSouth_S0000|rt_apr_citadelSouth_S_0000",
"lz_citadelSouth_S0000|rt_rtn_citadelSouth_S_0000",
"lz_cliffTown_I0000|lz_cliffTown_I_0000",
"lz_cliffTown_I0000|rt_apr_cliffTown_I_0000",
"lz_cliffTown_I0000|rt_rtn_cliffTown_I_0000",
"lz_cliffTown_N0000|lz_cliffTown_N_0000",
"lz_cliffTown_N0000|rt_apr_cliffTown_N_0000",
"lz_cliffTown_N0000|rt_rtn_cliffTown_N_0000",
"lz_cliffTown_S0000|lz_cliffTown_S_0000",
"lz_cliffTown_S0000|rt_apr_cliffTown_S_0000",
"lz_cliffTown_S0000|rt_rtn_cliffTown_S_0000",
"lz_cliffTownWest_S0000|lz_clifftownWest_S_0000",
"lz_cliffTownWest_S0000|rt_apr_cliffTownWest_S_0000",
"lz_cliffTownWest_S0000|rt_rtn_cliffTownWest_S_0000",
"lz_commfacility_0000",
"lz_commfacility_0002",
"lz_commFacility_I0000|lz_commFacility_I_0000",
"lz_commFacility_I0000|rt_apr_commFacility_I_0000",
"lz_commFacility_I0000|rt_rtn_commFacility_I_0000",
"lz_commFacility_N0000|lz_commFacility_N_0000",
"lz_commFacility_N0000|rt_apr_commFacility_N_0000",
"lz_commFacility_N0000|rt_rtn_commFacility_N_0000",
"lz_commFacility_S0000|lz_commFacility_S_0000",
"lz_commFacility_S0000|rt_apr_commFacility_S_0000",
"lz_commFacility_S0000|rt_rtn_commFacility_S_0000",
"lz_commFacility_W0000|lz_commFacility_W_0000",
"lz_commFacility_W0000|rt_apr_commFacility_W_0000",
"lz_commFacility_W0000|rt_rtn_commFacility_W_0000",
"lz_diamond_I0000|lz_diamond_I_0000",
"lz_diamond_I0000|rt_apr_diamond_I_0000",
"lz_diamond_I0000|rt_rtn_diamond_I_0000",
"lz_diamond_N0000|lz_diamond_N_0000",
"lz_diamond_N0000|rt_apr_diamond_N_0000",
"lz_diamond_N0000|rt_rtn_diamond_N_0000",
"lz_diamond_S_s10100",
"lz_diamondSouth_S0000|lz_diamondSouth_S_0000",
"lz_diamondSouth_S0000|rt_apr_diamondSouth_S_0000",
"lz_diamondSouth_S0000|rt_rtn_diamondSouth_S_0000",
"lz_diamondSouth_W0000|lz_diamondSouth_W_0000",
"lz_diamondSouth_W0000|rt_apr_diamondSouth_W_0000",
"lz_diamondSouth_W0000|rt_rtn_diamondSouth_W_0000",
"lz_diamondWest_S0000|lz_diamondWest_S_0000",
"lz_diamondWest_S0000|rt_apr_diamondWest_S_0000",
"lz_diamondWest_S0000|rt_rtn_diamondWest_S_0000",
"lz_enemyBase_I0000|lz_enemyBase_I_0000",
"lz_enemyBase_I0000|rt_apr_enemyBase_I_0000",
"lz_enemyBase_I0000|rt_rtn_enemyBase_I_0000",
"lz_enemyBase_N0000|lz_enemyBase_N_0000",
"lz_enemyBase_N0000|rt_apr_enemyBase_N_0000",
"lz_enemyBase_N0000|rt_rtn_enemyBase_N_0000",
"lz_enemyBase_S0000|lz_enemyBase_S_0000",
"lz_enemyBase_S0000|rt_apr_enemyBase_S_0000",
"lz_enemyBase_S0000|rt_rtn_enemyBase_S_0000",
"lz_Escape1",
"lz_Escape2",
"lz_Escape3",
"lz_factory_N0000|lz_factory_N_0000",
"lz_factory_N0000|rt_apr_factory_N_0000",
"lz_factory_N0000|rt_rtn_factory_N_0000",
"lz_factoryWest_S0000|lz_factoryWest_S_0000",
"lz_factoryWest_S0000|rt_apr_factoryWest_S_0000",
"lz_factoryWest_S0000|rt_rtn_factoryWest_S_0000",
"lz_field_I0000|lz_field_I_0000",
"lz_field_I0000|rt_apr_field_I_0000",
"lz_field_I0000|rt_rtn_field_I_0000",
"lz_field_N0000|lz_field_N_0000",
"lz_field_N0000|rt_apr_field_N_0000",
"lz_field_N0000|rt_rtn_field_N_0000",
"lz_field_W0000|lz_field_W_0000",
"lz_field_W0000|rt_apr_field_W_0000",
"lz_field_W0000|rt_rtn_field_W_0000",
"lz_fieldWest_S0000|lz_fieldWest_S_0000",
"lz_fieldWest_S0000|rt_apr_fieldWest_S_0000",
"lz_fieldWest_S0000|rt_rtn_fieldWest_S_0000",
"lz_flowStation_E0000|lz_flowStation_E_0000",
"lz_flowStation_E0000|rt_apr_flowStation_E_0000",
"lz_flowStation_E0000|rt_rtn_flowStation_E_0000",
"lz_flowStation_I0000|lz_flowStation_I_0000",
"lz_flowStation_I0000|rt_apr_flowStation_I_0000",
"lz_flowStation_I0000|rt_rtn_flowStation_I_0000",
"lz_fort_E0000|lz_fort_E_0000",
"lz_fort_E0000|rt_apr_fort_E_0000",
"lz_fort_E0000|rt_rtn_fort_E_0000",
"lz_fort_I0000|lz_fort_I_0000",
"lz_fort_I0000|rt_apr_fort_I_0000",
"lz_fort_I0000|rt_rtn_fort_I_0000",
"lz_fort_W0000|lz_fort_W_0000",
"lz_fort_W0000|rt_apr_fort_W_0000",
"lz_fort_W0000|rt_rtn_fort_W_0000",
"lz_hill_E0000|lz_hill_E_0000",
"lz_hill_E0000|rt_apr_hill_E_0000",
"lz_hill_E0000|rt_rtn_hill_E_0000",
"lz_hill_I0000|lz_hill_I_0000",
"lz_hill_I0000|rt_apr_hill_I_0000",
"lz_hill_I0000|rt_rtn__hill_I_0000",
"lz_hill_N0000|lz_hill_N_0000",
"lz_hill_N0000|rt_apr_hill_N_0000",
"lz_hill_N0000|rt_rtn__hill_N_0000",
"lz_hillNorth_N0000|lz_hillNorth_N_0000",
"lz_hillNorth_N0000|rt_apr_hillNorth_N_0000",
"lz_hillNorth_N0000|rt_rtn_hillNorth_N_0000",
"lz_hillNorth_W0000|lz_hillNorth_W_0000",
"lz_hillNorth_W0000|rt_apr_hillNorth_W_0000",
"lz_hillNorth_W0000|rt_rtn_hillNorth_W_0000",
"lz_hillSouth_W0000|lz_hillSouth_W_0000",
"lz_hillSouth_W0000|rt_apr_hillSouth_W_0000",
"lz_hillSouth_W0000|rt_rtn_hillSouth_W_0000",
"lz_hillWest_S0000|lz_hillWest_S_0000",
"lz_hillWest_S0000|rt_apr_hillWest_S_0000",
"lz_hillWest_S0000|rt_rtn_hillWest_S_0000",
"lz_lab_S0000|lz_lab_S_0000",
"lz_lab_S0000|rt_apr_lab_S_0000",
"lz_lab_S0000|rt_rtn_lab_S_0000",
"lz_lab_W0000|lz_lab_W_0000",
"lz_lab_W0000|rt_apr_lab_W_0000",
"lz_lab_W0000|rt_rtn_lab_W_0000",
"lz_labWest_W0000|lz_labWest_W_0000",
"lz_labWest_W0000|rt_apr_labWest_W_0000",
"lz_labWest_W0000|rt_rtn_labWest_W_0000",
"lz_outland_N0000|lz_outland_N_0000",
"lz_outland_N0000|rt_apr_outland_N_0000",
"lz_outland_N0000|rt_rtn_outland_N_0000",
"lz_outland_S0000|lz_outland_S_0000",
"lz_outland_S0000|rt_apr_outland_S_0000",
"lz_outland_S0000|rt_rtn_outland_S_0000",
"lz_pfCamp_I0000|lz_pfCamp_I_0000",
"lz_pfCamp_I0000|rt_apr_pfCamp_I_0000",
"lz_pfCamp_I0000|rt_rtn_pfCamp_I_0000",
"lz_pfCamp_N0000|lz_pfCamp_N_0000",
"lz_pfCamp_N0000|rt_apr_pfCamp_N_0000",
"lz_pfCamp_N0000|rt_rtn_pfCamp_N_0000",
"lz_pfCamp_S0000|lz_pfCamp_S_0000",
"lz_pfCamp_S0000|rt_apr_pfCamp_S_0000",
"lz_pfCamp_S0000|rt_rtn_pfCamp_S_0000",
"lz_pfCampNorth_S0000|lz_pfCampNorth_S_0000",
"lz_pfCampNorth_S0000|rt_apr_pfCampNorth_S_0000",
"lz_pfCampNorth_S0000|rt_rtn_pfCampNorth_S_0000",
"lz_powerPlant_E0000|lz_powerPlant_E_0000",
"lz_powerPlant_E0000|rt_apr_powerPlant_E_0000",
"lz_powerPlant_E0000|rt_rtn_powerPlant_E_0000",
"lz_powerPlant_S0000|lz_powerPlant_S_0000",
"lz_powerPlant_S0000|rt_apr_powerPlant_S_0000",
"lz_powerPlant_S0000|rt_rtn_powerPlant_S_0000",
"lz_remnants_I0000|lz_remnants_I_0000",
"lz_remnants_I0000|rt_apr_remnants_I_0000",
"lz_remnants_I0000|rt_rtn_remnants_I_0000",
"lz_remnants_S0000|lz_remnants_S_0000",
"lz_remnants_S0000|rt_apr_remnants_S_0000",
"lz_remnants_S0000|rt_rtn_remnants_S_0000",
"lz_remnantsNorth_N0000|lz_remnantsNorth_N_0000",
"lz_remnantsNorth_N0000|rt_apr_remnantsNorth_N_0000",
"lz_remnantsNorth_N0000|rt_rtn_remnantsNorth_N_0000",
"lz_remnantsNorth_S0000|lz_remnantsNorth_S_0000",
"lz_remnantsNorth_S0000|rt_apr_remnantsNorth_S_0000",
"lz_remnantsNorth_S0000|rt_rtn_remnantsNorth_S_0000",
"lz_rtn_diamond_S_s10100",
"lz_ruins_S0000|lz_ruins_S_0000",
"lz_ruins_S0000|rt_apr_ruins_S_0000",
"lz_ruins_S0000|rt_rtn_ruins_S_0000",
"lz_ruinsNorth_S0000|lz_ruinsNorth_S_0000",
"lz_ruinsNorth_S0000|rt_apr_ruinsNorth_S_0000",
"lz_ruinsNorth_S0000|rt_rtn_ruinsNorth_S_0000",
"lz_savannah_I0000|lz_savannah_I_0000",
"lz_savannah_I0000|rt_apr_savannah_I_0000",
"lz_savannah_I0000|rt_rtn_savannah_I_0000",
"lz_savannahEast_N0000|lz_savannahEast_N_0000",
"lz_savannahEast_N0000|rt_apr_savannahEast_N_0000",
"lz_savannahEast_N0000|rt_rtn_savannahEast_N_0000",
"lz_savannahEast_S0000|lz_savannahEast_S_0000",
"lz_savannahEast_S0000|rt_apr_savannahEast_S_0000",
"lz_savannahEast_S0000|rt_rtn_savannahEast_S_0000",
"lz_savannahWest_N0000|lz_savannahWest_N_0000",
"lz_savannahWest_N0000|rt_apr_savannahWest_N_0000",
"lz_savannahWest_N0000|rt_rtn_savannahWest_N_0000",
"lz_slopedTown_E0000|lz_slopedTown_E_0000",
"lz_slopedTown_E0000|rt_apr_slopedTown_E_0000",
"lz_slopedTown_E0000|rt_rtn_slopedTown_E_0000",
"lz_slopedTown_I0000|lz_slopedTown_I_0000",
"lz_slopedTown_I0000|rt_apr_slopedTown_I_0000",
"lz_slopedTown_I0000|rt_rtn_slopedTown_I_0000",
"lz_slopedTown_W0000|lz_slopedTown_W_0000",
"lz_slopedTown_W0000|rt_apr_slopedTown_W_0000",
"lz_slopedTown_W0000|rt_rtn_slopedTown_W_0000",
"lz_slopedTownEast_E0000|lz_slopedTownEast_E_0000",
"lz_slopedTownEast_E0000|rt_apr_slopedTownEast_E_0000",
"lz_slopedTownEast_E0000|rt_rtn_slopedTownEast_E_0000",
"lz_sovietBase_E0000|lz_sovietBase_E_0000",
"lz_sovietBase_E0000|rt_apr_sovietBase_E_0000",
"lz_sovietBase_E0000|rt_rtn_sovietBase_E_0000",
"lz_sovietBase_N0000|lz_sovietBase_N_0000",
"lz_sovietBase_N0000|rt_apr_sovietBase_N_0000",
"lz_sovietBase_N0000|rt_rtn_sovietBase_N_0000",
"lz_sovietBase_S0000|lz_sovietBase_S_0000",
"lz_sovietBase_S0000|rt_apr_sovietBase_S_0000",
"lz_sovietBase_S0000|rt_rtn_sovietBase_S_0000",
"lz_sovietSouth_S0000|lz_sovietSouth_S_0000",
"lz_sovietSouth_S0000|rt_apr_sovietSouth_S_0000",
"lz_sovietSouth_S0000|rt_rtn_sovietSouth_S_0000",
"lz_swamp_I0000|lz_swamp_I_0000",
"lz_swamp_I0000|rt_apr_swamp_I_0000",
"lz_swamp_I0000|rt_rtn_swamp_I_0000",
"lz_swamp_N0000|lz_swamp_N_0000",
"lz_swamp_N0000|rt_apr_swamp_N_0000",
"lz_swamp_N0000|rt_rtn_swamp_N_0000",
"lz_swamp_S0000|lz_swamp_S_0000",
"lz_swamp_S0000|rt_apr_swamp_S_0000",
"lz_swamp_S0000|rt_rtn_swamp_S_0000",
"lz_swamp_W0000|lz_swamp_W_0000",
"lz_swamp_W0000|rt_apr_swamp_W_0000",
"lz_swamp_W0000|rt_rtn_swamp_W_0000",
"lz_swampEast_N0000|lz_swampEast_N_0000",
"lz_swampEast_N0000|rt_apr_swampEast_N_0000",
"lz_swampEast_N0000|rt_rtn_swampEast_N_0000",
"lz_tent_E0000|lz_tent_E_0000",
"lz_tent_E0000|rt_apr_tent_E_0000",
"lz_tent_E0000|rt_rtn_tent_E_0000",
"lz_tent_I0000|lz_tent_I_0000",
"lz_tent_I0000|rt_apr_tent_I_0000",
"lz_tent_I0000|rt_rtn_tent_I_0000",
"lz_tent_N0000|lz_tent_N_0000",
"lz_tent_N0000|rt_apr_tent_N_0000",
"lz_tent_N0000|rt_rtn_tent_N_0000",
"lz_village_N0000|lz_village_N_0000",
"lz_village_N0000|rt_apr_village_N_0000",
"lz_village_N0000|rt_rtn_village_N_0000",
"lz_village_W0000|lz_village_W_0000",
"lz_village_W0000|rt_apr_village_W_0000",
"lz_village_W0000|rt_rtn_village_W_0000",
"lz_waterway_I0000|lz_waterway_I_0000",
"lz_waterway_I0000|rt_apr_waterway_I_0000",
"lz_waterway_I0000|rt_rtn_waterway_I_0000",
"lzs_lab_S_0000",
"lzs_lab_W_0000",
"lzs_outland_Liquid",
"lzs_pfCamp_Mid_0000",
"lzs_QuietGone|lz_pfCamp_E_0000",
"lzs_QuietGone|rt_apr_pfCamp_E_0000",
"lzs_QuietGone|rt_rtn_pfCamp_E_0000",
"lzs_slopedTown_E_0000",
"lzs_sovietBase_S_0000",
"lzs_sovietBase_S_escape",
"lzs_sovietSouth_W_0000",
"lzs_villageNorth_N_0000",
"lzs_waterway_I_0000",
}

return this