Overview
========

-   taxanomy

-   MR path planning

    -   Discrete

    -   continous

-   Concurrent assignment and path planning

Taxanomy
========

-   Domain : continous and Discrete

    -   continous planning time parameterised trajecteroies

    -   planning on graphs or grids

-   Goal assignment

    -   **Labeled** each robot has pre determined goal

    -   **Inlabeled** no pre determined path but goal must be reached

-   problem representation

    -   **coupled** joint state of all robots in the system

    -   **Decoupled** each robot is represented individually

-   planning

    -   **Reactive** dynamic obstacle avoidance

    -   **Deliberative** optimilaty

-   Computation

    -   **Centralised**

    -   **Decentralised**

Multi agent path planning
=========================

-   Multi agent path planning is also called as multi agent path
    planning

-   discretized robot

-   point robots - holonomic and no motion constrains

The problem
-----------

-   no of agents at start location with predefined goal in known
    environment

-   **Task** find a collsion free path

    -   generally this is an Labeled problem

    -   **application** logistics,automated warehouse

-   **allowed motion** - north,south,east,west

### Performance metrics

-   **Makespan** - time of last robots arrival

-   **Flowtime** - sum of arrival time, over all robots


Coupled vs decoupled
====================

![[]{label="fig:"}](cvdpathplanning.png){#fig: width="80%"}

-   coupled planning gives completeness

-   Decoupled path planning is not complete in general(prone to
    Deadlock)

Coupled path planning
=====================

-   Complexity over decoupled

-   but more power solution

-   coupled formulation:

    -   Robot $i$ has configuration space [^1] of $C_i$

    -   Then joint state is given by product:\
        $X=C_1*C_2*C_3*C_4 \ldots\ldots$

    -   dimensionality grows linearly

    -   A\* requires time that is exponential to space

-   for $N$ robots in $M$ cells in grid world

    ![[]{label="fig:"}](mrcoupledspace.png){#fig: width="80%"}

-   we have $M^N$ states to consider

-   Facts

    -   NP hard [^2] to solve optimally for make span and flow time
        minimisation

    -   impossible to minimize both objective

[^1]: a complete specification of the position of every point in the
    system

[^2]: Non polynomial computational time cane be reduced
