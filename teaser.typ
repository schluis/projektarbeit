// #import "theme.typ": *


#set text(
  fill: black,
  size: 10.7pt,
  font: "Asap",
  // font: "Comfortaa",
  // font: Inter,
)
#set par(justify:true)

#set page(
  paper:"a4",
  header: align(right)[
    Luis Scheuch | 2024-11
  ],
)

= Projektarbeit HULKs | Exposé
#v(10pt)

Working title:
Creating a Virtual NAO Robot Model for Reinforcement Learning: Translating Motor Dynamics and System Behavior into a Simulation Framework.
#v(5pt)

+ Introduction  
  - Background: The HULKs are the RoboCup SPL team of the Hamburg University of Technology. 
    We are programming robots in Rust to autonomously play soccer.
    Currently, all motion related tasks such as standing up, walking, kicking, etc. are classical algorithms or hand-tuned keyframe animations.
  - Problem Statement: New methods from reeinforcement learning (RL) could be used to improve the motion of the robots. 
    However, the current simulation framework does not provide the means to simulate the motor dynamics and system behavior of the robots.
  - Objectives: Compare existing simulation frameworks, identify the requirements for a simulation framework for the HULKs, identify key parameters to succeed in Sim2Real and develop a prototype for a virtual NAO robot model that can be used for further RL research.
    If time permits, implement a simple RL algorithm to demonstrate the capabilities of the simulation framework.


+ Significance and Impact  
  - Currently, there is no implementation of a NAO model which is appropriate for reinforcement learning research. This research could fill this gap and provide a valuable resource for the RoboCup community.
  - Creating a virtual NAO robot model for reinforcement learning could enable the HULKs to develop more advanced motion algorithms and enable more students to contribute to the project.

+ Timeline  
  - Literature Review: 70h 
  - Simulation Framework Requirements: 25h
  - Prototype Development: 60h
  - RL Algorithm Implementation: 25h

+ Excerpt from Available Literature 
  #bibliography("literature.bib", full:true, title:none)

