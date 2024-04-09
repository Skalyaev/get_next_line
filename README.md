# get_next_line
> *Ce projet vise à vous faire développer une fonction renvoyant une ligne lue depuis un descripteur de fichier.*

Ce projet vous permettra non seulement d'ajouter une fonction très pratique à votre collection, mais aussi d'aborder un nouvel élément surprenant de la programmation en C : les variables statiques.

## Install
```bash
sudo apt update -y
sudo apt install -y gcc
sudo apt install -y make
sudo apt install -y git
```
```bash
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/src
mkdir -p $HOME/.local/include
```
```bash
link=Skalyaeve/get_next_line
name=gnl

git clone https://github.com/$link.git $name
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

rm -r $name
rm $HOME/.local/bin/$name
rm $HOME/.local/src/$name
rm $HOME/.local/include/$name
```
