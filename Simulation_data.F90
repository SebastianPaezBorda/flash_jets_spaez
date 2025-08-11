!!****if* source/Simulation/SimulationMain/AlphaDisk-Gio/Simulation_data
!!
!! NAME
!!  Simulation_data
!!
!! SYNOPSIS
!!
!!  use Simulation_data
!!
!! DESCRIPTION
!!
!!  Store the simulation data for the Jet-Gio problem
!!
!! ARGUMENTS
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

module Simulation_data

  implicit none

  integer, save :: sim_meshMe

! ---- Runtime Parameters -------------------------

	! minimum values of parameters
     real, save :: sim_gamma, sim_smallp, sim_smallx
     
     ! others parameters
     real, save :: pi

	! Jet parameters ------------

      integer, save :: sim_mjb
      real, save    :: sim_p_a, sim_p_j, sim_rho_j, sim_rho_a, sim_rj, sim_jet_vel


  !! *** Variables pertaining to Simulation Setup  *** !!
  logical, save :: sim_gCell

end module Simulation_data


