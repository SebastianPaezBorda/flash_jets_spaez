!!****if* source/Simulation/SimulationMain/AlphaDisk-Gio/Simulation_init
!!
!! NAME
!!
!!  Simulation_init
!!
!!
!! SYNOPSIS
!!
!!  Simulation_init()
!!
!!
!! DESCRIPTION
!!
!!  Initializes all the parameters needed for the Jet-Gio problem
!!
!! ARGUMENTS
!!
!!  
!!
!! PARAMETERS
!!
!! p_j	       	     # Initial jet pressure
!! p_a	       	     # Initial ambient pressure
!! jet_vel		     # jet velocity
!! rj 	  		     # jet radius
!! mjb     		     # Index controlling the width of boundary layer
!! rho_a   		     # Ambient medium density
!! rho_j   		     # Jet density
!!
!!***

subroutine Simulation_init()
  
  use Simulation_data
  use RuntimeParameters_interface, ONLY : RuntimeParameters_get
  use Logfile_interface, ONLY : Logfile_stamp
  use Driver_interface,  ONLY : Driver_abortFlash, Driver_getMype
  use PhysicalConstants_interface, ONLY : PhysicalConstants_get


  implicit none
  
#include "Flash.h"
#include "constants.h"

  
  call Driver_getMype(MESH_COMM, sim_meshMe)

  call RuntimeParameters_get('smallp', sim_smallp)
  call RuntimeParameters_get('smallx', sim_smallx) 
  
  call RuntimeParameters_get('gamma', sim_gamma)
  
  call RuntimeParameters_get('p_a', sim_p_a)
  call RuntimeParameters_get('rho_a', sim_rho_a)
  call RuntimeParameters_get('rho_j', sim_rho_j)
  call RuntimeParameters_get('jet_vel', sim_jet_vel)
  call RuntimeParameters_get('rj', sim_rj)
  call RuntimeParameters_get('mjb', sim_mjb)
  

  call PhysicalConstants_get("pi", pi)


  call Logfile_stamp( "initializing for Jet-Gio",  &
       "[Simulation_init]")
     

end subroutine Simulation_init







