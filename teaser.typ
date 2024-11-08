// #import "theme.typ": *

#show link: set text(blue)

#set text(
  fill: black,
  size: 10.7pt,
  font: "Asap",
  
  // font: "Comfortaa",
  // font: Inter,
)
#set par(justify:true)
#set list(marker: "–")

#set page(
  paper:"a4",
  header: [
    Exposé Projektarbeit Luis Scheuch 
    #h(1fr)
    2024-11
  ],
)
#set page(footer: context align(right)[
  #counter(page).display(
    "1/1",
    both: true,
  )
])

= Modeling a Robot for Reinforcement Learning
Enabling Advanced Motion Algorithms for the HULKs and the RoboCup Community
#v(5pt)

== Introduction  

Artificial intelligence and robotics are one of the most promising fields in the future of manufacturing and automation technology @wef2023future @Duggal_2022.
To promote research in this field, various competitions exist, such as the #link("https://www.robocup.org/")[RoboCup] @robocup_objective.
It was launched with the vision of creating a team of autonomous humanoid robots capable of defeating the human soccer champions by 2050.
For that, RoboCup teams have developed a variety of algorithms designed to handle the complexities of soccer, including perception, decision-making, and motion control.

In the #link("https://spl.robocup.org/")[RoboCup Standard Platform League (SPL)], most teams rely mainly on classical algorithms for motion control, such as the widely adopted walking algorithm by #cite(<hengst2014walk>, form: "author") or hand-tuned keyframe animations, such as the default motions by the manufacturer #cite(<softbank_motions>).
Tuning these algorithms is an error-prone and time-consuming task.
There are many parameters to tune, there's always the risk of overfitting to a specific robot and specific knowledge and experience is required to achieve good results.

Methods from reinforcement learning (RL) could be a solution to this problem.
Various works demonstrate the potential of RL for robotic soccer (@Haarnoja_2024 @vanmarum2024revisitingrewarddesignevaluation @Kober_2013) and since all teams use the same robot, the #link("https://www.aldebaran.com/en/nao")[NAO], results are expected to easily be transferable between teams.

== Research Goals

This work won't soley focus on the SPL, but also on the broader RoboCup community and thus general robotics research.
The main goals are to identify necessary requirements for a simulation framework, compare existing simulation frameworks, identify key parameters to succeed in transfering a learned model to the real hardware and to develop a prototype for a virtual NAO model that can be used within the SPL.
To evaluate the model's accuracy and physical capabilities, simulation results will be compared with real-world data, as suggested by #cite(<pepper_2007>, form: "author").
The model's potential performance will be demonstrated in a simple task in the chosen RL framework.


== Potential Impact  

To date, there is no implementation of a NAO model suitable for reinforcement learning research, i.e. a model that accurately models motor dynamics while being fast enough for simulation use.
This work could fill this gap, providing a valuable resource for the RoboCup community, lowering the barriers for more teams to start RL research, and enabling more students to get involved in this field.

== Research Questions

- What are necessary requirements for a simulation framework suitable for RL-based motion control in humanoid robotics?
- How do existing simulation frameworks compare in terms of accuracy, efficiency, computational performance, usability and hardware requirements?
- Which key parameters are critical for successfully transferring a reinforcement learning model from simulation to the physical NAO robot?
- How well does the developed virtual NAO model replicate real-world performance in terms of accuracy and physical capabilities when compared to empirical data?
  - How does it compare in extreme situations, such as standing up?
  - Can the model replicate motor errors, such as a stuck joint?

== Timeline  
  - Literature Review: 60h 
  - Simulation Framework Requirements: 25h
  - Prototype Development: 50h
  - RL Algorithm Implementation: 25h
  - Evaluation: 20h

#v(10pt)
#bibliography("literature.bib")
