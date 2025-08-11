---
title: "Linying Yang releases paper on 'frengression'"
date: 2025-08-05
permalink: /posts/2025/08/Frengression/
tags:
  - causal simulation
  - frugal parameterization
---


[Linying Yang](https://linyingyang.github.io/) has released a paper, [Frugal, Flexible, Faithful: Causal Data 
Simulation via Frengression](https://arxiv.org/abs/2508.01018), which uses a 
_generative_ method for simulating causal datasets.  This builds on the frugal
parameterization ([Evans and Didelez, 2024](https://arxiv.org/abs/2109.03694)) 
in various ways:

 - it is _frugal_: it makes use of variation independent quantities, so these 
 can be switched without compromising the interpretation;

 - it is _flexible_: in our case it uses neural networks, but in principle it
 can make use of any method;
 
 - it is _marginal_: the estimand is marginally causal, i.e. it is of the form
 $Y(t)$ **not** $Y(t) | Z=z$;
 
 - it is _faithful_: the estimand can be swapped for any other, while still retaining
 the structure of the original data;
 
 - it is _longitudinal_: longitudinal and survival data can be estimated/simulated
 as well as static data;
 
 - it is _extrapolative_: continuous treatments can be extended under an additive
 noise model;
 
 - it is _privacy preserving_: it supports differential privacy.

The work is joint with Xinwei Shen (UW) and Robin Evans.

------
