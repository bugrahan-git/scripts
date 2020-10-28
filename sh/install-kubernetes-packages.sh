#!/bin/zsh

OLD_PWD="${OLDPWD}"
PACKAGE_DIR="${HOME}/Workspace/kube-packages/$( date +%Y-%m-%d )"

mkdir -p "${PACKAGE_DIR}"

for p in docker-machine-driver-kvm2 minikube-bin kubectl-bin; do
    cd "${PACKAGE_DIR}"

    echo "> Fetching ${p} ..."
    curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/${p}.tar.gz
    tar zxvf ${p}.tar.gz

    cd "${PACKAGE_DIR}/${p}"
    echo "> Building ${p} ..."
    makepkg -si

done

cd "${OLD_PWD}"
echo "> Done"

