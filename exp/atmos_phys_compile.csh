# Build the am3 library

set pathnames_atmos_param  = $code_dir/path_names_atmos_param        # path to file containing list of source paths

cat > $pathnames_atmos_param <<EOF_atmos_param
atmos_param/betts_miller/betts_miller.F90                                                                
atmos_param/betts_miller/bm_massflux.F90                                                                      
atmos_param/betts_miller/bm_omp.F90                                   
atmos_param/cg_drag/cg_drag.F90                                  
atmos_param/cloud_generator/betaDistribution.F90                 
atmos_param/cloud_generator/cloud_generator.F90                   
atmos_param/cloud_obs/cloud_obs.F90                              
atmos_param/cloud_rad/cloud_rad.F90                              
atmos_param/cloud_zonal/cloud_zonal.F90                          
atmos_param/clouds/clouds.F90                                     
atmos_param/cosp/MISR_simulator/MISR_simulator.f                  
atmos_param/cosp/cosp.F90                                        
atmos_param/cosp/cosp_constants.f90                               
atmos_param/cosp/cosp_defs.h                                     
atmos_param/cosp/cosp_driver.F90                                 
atmos_param/cosp/cosp_io.F90                                     
atmos_param/cosp/cosp_isccp_simulator.f90                       
atmos_param/cosp/cosp_lidar.f90                                  
atmos_param/cosp/cosp_misr_simulator.f90                          
atmos_param/cosp/cosp_modis_simulator.f90                       
atmos_param/cosp/cosp_rttov_simulator.F90                        
atmos_param/cosp/cosp_simulator.F90                               
atmos_param/cosp/cosp_stats.f90                                   
atmos_param/cosp/cosp_types.f90                                 
atmos_param/cosp/cosp_utils.f90                                  
atmos_param/cosp/MODIS_simulator/modis_simulator.f90             
atmos_param/cosp/actsim/lidar_simulator.f90                       
atmos_param/cosp/actsim/lmd_ipsl_stats.f90                       
atmos_param/cosp/icarus-scops-3.7/congvec.inc                     
atmos_param/cosp/icarus-scops-3.7/icarus.f90                     
atmos_param/cosp/icarus-scops-3.7/isccp_cloud_types.f            
atmos_param/cosp/icarus-scops-3.7/scops.f                         
atmos_param/cosp/llnl/cosp_radar.f90                             
atmos_param/cosp/llnl/llnl_stats.f90                             
atmos_param/cosp/llnl/pf_to_mr.f                                  
atmos_param/cosp/llnl/prec_scops.f                               
atmos_param/cosp/quickbeam/array_lib.f90                         
atmos_param/cosp/quickbeam/atmos_lib.f90                         
atmos_param/cosp/quickbeam/dsd.f90                               
atmos_param/cosp/quickbeam/format_input.f90                      
atmos_param/cosp/quickbeam/gases.f90                              
atmos_param/cosp/quickbeam/load_hydrometeor_classes.f90
atmos_param/cosp/quickbeam/load_mie_table.f90                     
atmos_param/cosp/quickbeam/math_lib.f90                          
atmos_param/cosp/quickbeam/mrgrnk.f90                             
atmos_param/cosp/quickbeam/optics_lib.f90                         
atmos_param/cosp/quickbeam/radar_simulator.f90                   
atmos_param/cosp/quickbeam/radar_simulator_types.f90             
atmos_param/cosp/quickbeam/zeff.f90                                
atmos_param/cu_mo_trans/cu_mo_trans.F90                          
atmos_param/damping_driver/damping_driver.F90                       
atmos_param/diag_cloud/diag_cloud.F90                            
atmos_param/diag_cloud_rad/diag_cloud_rad.F90                                            
atmos_param/diffusivity/diffusivity.F90                           
atmos_param/donner_deep/cumulus_closure_k.F90                     
atmos_param/donner_deep/donner_cape_k.F90                        
atmos_param/donner_deep/donner_cloud_model_k.F90                 
atmos_param/donner_deep/donner_deep.F90                           
atmos_param/donner_deep/donner_deep_k.F90                         
atmos_param/donner_deep/donner_deep_miz.F90                       
atmos_param/donner_deep/donner_lite_k.F90                        
atmos_param/donner_deep/donner_lscloud_k.F90                     
atmos_param/donner_deep/donner_meso_k.F90                         
atmos_param/donner_deep/donner_nml.h                             
atmos_param/donner_deep/donner_rad_k.F90                         
atmos_param/donner_deep/donner_types.F90                     
atmos_param/donner_deep/donner_types.h                           
atmos_param/donner_deep/donner_utilities_k.F90                    
atmos_param/donner_deep/fms_donner.F90                         
atmos_param/donner_deep/nonfms_donner.F90                        
atmos_param/donner_deep/wet_deposition_0D.F90                    
atmos_param/dry_adj/dry_adj.F90                                  
atmos_param/edt/edt.F90                                          
atmos_param/entrain/entrain.F90                                   
atmos_param/fsrad/co2_data.F90                                    
atmos_param/fsrad/co2int.F90                                                                                             
atmos_param/fsrad/fs_profile.F90                                 
atmos_param/fsrad/fsrad.F90                                      
atmos_param/fsrad/hconst.F90                                     
atmos_param/fsrad/longwave.F90                                   
atmos_param/fsrad/mcm_lw.F90                                     
atmos_param/fsrad/mcm_sw_driver.F90                              
atmos_param/fsrad/mcm_swnew.F90                                   
atmos_param/fsrad/mcm_swtbls.F90                                 
atmos_param/fsrad/rad_diag.F90                                   
atmos_param/fsrad/rdparm.F90
atmos_param/fsrad/shortwave.F90
atmos_param/grey_radiation/grey_radiation.F90
atmos_param/lin_cloud_microphys/lin_cloud_microphys.F90
atmos_param/lscale_cond/lscale_cond.F90
atmos_param/mg_drag/mg_drag.F90
atmos_param/moist_conv/moist_conv.F90
atmos_param/moist_processes/detr_ice_num.F90
atmos_param/moist_processes/moist_processes.F90
atmos_param/moist_processes/moist_processes_utils.F90
atmos_param/moist_processes/moistproc_kernels.F90
atmos_param/my25_turb/my25_turb.F90
atmos_param/physics_driver/physics_driver.F90
atmos_param/radiation_driver/radiation_driver.F90
atmos_param/ras/ras.F90
atmos_param/rh_clouds/rh_clouds.F90
atmos_param/sea_esf_rad/aerosol.F90
atmos_param/sea_esf_rad/aerosolrad_package.F90
atmos_param/sea_esf_rad/bulkphys_rad.F90
atmos_param/sea_esf_rad/cloud_spec.F90
atmos_param/sea_esf_rad/cloudrad_diagnostics.F90
atmos_param/sea_esf_rad/cloudrad_package.F90
atmos_param/sea_esf_rad/diag_clouds_W.F90
atmos_param/sea_esf_rad/donner_deep_clouds_W.F90
atmos_param/sea_esf_rad/esfsw_driver.F90
atmos_param/sea_esf_rad/esfsw_parameters.F90
atmos_param/sea_esf_rad/gas_tf.F90
atmos_param/sea_esf_rad/isccp_clouds.F90
atmos_param/sea_esf_rad/lhsw_driver.F90
atmos_param/sea_esf_rad/longwave_clouds.F90
atmos_param/sea_esf_rad/longwave_driver.F90
atmos_param/sea_esf_rad/longwave_fluxes.F90
atmos_param/sea_esf_rad/longwave_params.F90
atmos_param/sea_esf_rad/longwave_tables.F90
atmos_param/sea_esf_rad/lw_gases_stdtf.F90
atmos_param/sea_esf_rad/mgrp_prscr_clds.F90
atmos_param/sea_esf_rad/microphys_cloud.F90
atmos_param/sea_esf_rad/microphys_rad.F90
atmos_param/sea_esf_rad/optical_path.F90
atmos_param/sea_esf_rad/original_fms_rad.F90
atmos_param/sea_esf_rad/ozone.F90
atmos_param/sea_esf_rad/rad_output_file.F90
atmos_param/sea_esf_rad/rad_utilities.F90
atmos_param/sea_esf_rad/radiation_diag.F90
atmos_param/sea_esf_rad/radiative_gases.F90
atmos_param/sea_esf_rad/rh_based_clouds.F90
atmos_param/sea_esf_rad/sea_esf_rad.F90
atmos_param/sea_esf_rad/sealw99.F90
atmos_param/sea_esf_rad/shortwave_driver.F90
atmos_param/sea_esf_rad/specified_clouds_W.F90
atmos_param/sea_esf_rad/standalone_clouds.F90
atmos_param/sea_esf_rad/strat_clouds_W.F90
atmos_param/sea_esf_rad/uw_clouds_W.F90
atmos_param/sea_esf_rad/zetac_clouds_W.F90
atmos_param/shallow_conv/shallow_conv.F90
atmos_param/shallow_cu/conv_closures.F90
atmos_param/shallow_cu/conv_plumes.F90
atmos_param/shallow_cu/conv_plumes_k.F90
atmos_param/shallow_cu/conv_utilities.F90
atmos_param/shallow_cu/conv_utilities_k.F90
atmos_param/shallow_cu/deep_conv.F90
atmos_param/shallow_cu/uw_conv.F90
atmos_param/shallow_physics/shallow_physics.F90
atmos_param/stable_bl_turb/stable_bl_turb.F90
atmos_param/strat_cloud/aerosol_cloud.F90
atmos_param/strat_cloud/check_nan.F90
atmos_param/strat_cloud/gamma_mg.F90
atmos_param/strat_cloud/mg_const.F90
atmos_param/strat_cloud/microphysics.F90
atmos_param/strat_cloud/morrison_gettelman_microp.F90
atmos_param/strat_cloud/nc_cond.F90
atmos_param/strat_cloud/polysvp.F90
atmos_param/strat_cloud/rotstayn_klein_mp.F90
atmos_param/strat_cloud/simple_pdf.F90
atmos_param/strat_cloud/strat_cloud.F90
atmos_param/strat_cloud/strat_cloud_legacy.F90
atmos_param/strat_cloud/strat_cloud_utilities.F90
atmos_param/strat_cloud/strat_netcdf.F90
atmos_param/strat_cloud/strat_nml.h
atmos_param/topo_drag/topo_drag.F90
atmos_param/vert_diff/vert_diff.F90
atmos_param/vert_diff_driver/vert_diff_driver.F90
atmos_param/vert_turb_driver/vert_turb_driver.F90
atmos_shared/atmos_nudge/atmos_nudge.F90
atmos_shared/interpolator/interpolator.F90
atmos_shared/tracer_driver/aer_ccn_act/aer_ccn_act.F90
atmos_shared/tracer_driver/aer_ccn_act/aer_ccn_act_k.F90
atmos_shared/tracer_driver/aer_ccn_act/aer_in_act.F90
atmos_shared/tracer_driver/aer_ccn_act/aerosol_params.F90
atmos_shared/tracer_driver/aer_ccn_act/ice_nucl.F90
atmos_shared/tracer_driver/atmos_age_tracer.F90
atmos_shared/tracer_driver/atmos_carbon_aerosol.F90
atmos_shared/tracer_driver/atmos_ch3i.F90
atmos_shared/tracer_driver/atmos_co2.F90
atmos_shared/tracer_driver/atmos_convection_tracer.F90
atmos_shared/tracer_driver/atmos_dust.F90
atmos_shared/tracer_driver/atmos_radon.F90
atmos_shared/tracer_driver/atmos_sea_salt.F90
atmos_shared/tracer_driver/atmos_soa.F90
atmos_shared/tracer_driver/atmos_sulfate.F90
atmos_shared/tracer_driver/atmos_sulfur_hex.F90
atmos_shared/tracer_driver/atmos_tracer_driver.F90
atmos_shared/tracer_driver/atmos_tracer_utilities.F90
atmos_shared/tracer_driver/stratchem/strat_chem_driver.F90
atmos_shared/tracer_driver/stratchem/strat_chem_model.F90
atmos_shared/tracer_driver/tropchem/m_tracname.F90
atmos_shared/tracer_driver/tropchem/mo_chem_utls.F90
atmos_shared/tracer_driver/tropchem/mo_chemdr.F90
atmos_shared/tracer_driver/tropchem/mo_chemini.F90
atmos_shared/tracer_driver/tropchem/mo_exp_slv.F90
atmos_shared/tracer_driver/tropchem/mo_fastjx.F90
atmos_shared/tracer_driver/tropchem/mo_fphoto.F90
atmos_shared/tracer_driver/tropchem/mo_hook.F90
atmos_shared/tracer_driver/tropchem/mo_imp_slv.F90
atmos_shared/tracer_driver/tropchem/mo_jpl.F90
atmos_shared/tracer_driver/tropchem/mo_photo.F90
atmos_shared/tracer_driver/tropchem/mo_read_sim_chm.F90
atmos_shared/tracer_driver/tropchem/mo_rodas_slv.F90
atmos_shared/tracer_driver/tropchem/mo_setinv.F90
atmos_shared/tracer_driver/tropchem/mo_setsox.F90
atmos_shared/tracer_driver/tropchem/mo_usrrxt.F90
atmos_shared/tracer_driver/tropchem/moz.mat.F90
atmos_shared/tracer_driver/tropchem/moz.mods.F90
atmos_shared/tracer_driver/tropchem/moz.subs.F90
atmos_shared/tracer_driver/tropchem/strat_chem_utilities.F90
atmos_shared/tracer_driver/tropchem/tropchem_driver.F90
atmos_shared/vert_advection/vert_advection.F90

EOF_atmos_param

# setup directory structure
mkdir -p $executable:h:h/lib_atmos_phys

# compile libs
cd $executable:h:h/lib_atmos_phys
$mkmf_lib -p lib_atmos_phys.a -c "$cppDefs" -o "-I$executable:h:h/lib_FMS" $pathnames_atmos_param $lib_include_dirs

make

if( $status ) then
    echo "Make failed to create  lib_atmos_phys.a"
    exit 1
endif
