# BADASS - Bgp At Doors of Autonomous System is Simple

[![en](https://img.shields.io/badge/lang-en-pink.svg)](README.en.md)
[![fr](https://img.shields.io/badge/lang-fr-purple.svg)](README.md)

## Description
BADASS est un projet de l'école 42 qui vise à implémenter un routeur BGP (Border Gateway Protocol) simple. Ce projet permet de comprendre et de maîtriser les concepts de réseaux, de routage inter-domaine et de protocoles de communication entre systèmes autonomes (AS).

Ce projet est séparé en trois partie:
- La premiere partie est une introduction a l'utilisation de GNS3
- La deuxieme partie consiste a faire communiqué deux reseaux privé distinct par le biais de deux routeur
- la troisieme partie fait communiqué trois réseau privé distinct dans une architecture [leaf-spine](https://community.fs.com/fr/article/leaf-spine-with-fs-com-switches.html)

## Fonctionnalités
- Établissement de sessions BGP avec d'autres routeurs
- Annonce et réception de routes BGP
- Gestion des tables de routage
- Mise en œuvre de politiques de routage basées sur des critères définis

## Technologies Utilisées
- Langage : bash
- Logiciel : GNS3, frrouting
- Protocoles : BPG, OSPF
- OS : Linux

## Installation et Exécution

### Prérequis
- Avoir `docker` et `GNS3`
- Une compréhension de base des concepts BGP et des systèmes autonomes

### Instructions
Clonez le repository :
```bash
git clone https://github.com/iguidado/BADASS.git
cd BADASS
```

Allez dans la partie qui vous interesse
```bash
cd p3
./build_containers.sh
```

Vous pouvez desormais ouvrir le projet correspondant situé à la racine de la partie dans GNS3
