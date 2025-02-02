# <p align="center">get_next_line</p>

> _Ce projet vise à vous faire développer une fonction renvoyant les lignes lues depuis un descripteur de fichier._
>
> _Que ce soit un fichier, stdin, ou même plus tard une connexion réseau, vous aurez toujours besoin d'un moyen de lire le contenu ligne par ligne. Il est temps de commencer à travailler sur cette fonction, qui sera essentielle pour vos projets futurs._
>
> _Ce projet vous permettra non seulement d'ajouter une fonction très pratique à votre collection, mais aussi d'aborder un nouvel élément surprenant de la programmation en C : les variables statiques._

## Preview

![](https://github.com/Skalyaeve/images-1/blob/main/screenshot/gnl.gif)

## Install

```bash
sudo apt update -y
sudo apt install -y gcc
sudo apt install -y make
```

```bash
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/src
mkdir -p $HOME/.local/include
```

```bash
name=gnl

git clone https://github.com/Skalyaeve/get_next_line.git $name
cd $name && make && make clean

ln -s $PWD/$name $HOME/.local/bin/$name
ln -s $PWD/src $HOME/.local/src/$name
ln -s $PWD/include $HOME/.local/include/$name
```

## Usage

```bash
export PATH=$HOME/.local/bin:$PATH
gnl [file]
```

## Uninstall

```bash
name=gnl

rm -rf $name
rm $HOME/.local/bin/$name
rm $HOME/.local/src/$name
rm $HOME/.local/include/$name
```
