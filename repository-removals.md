App: Software Sources

UBUNTU:

sudo add-apt-repository -r ppa:<ppa to remove>

MINT
Stackexchange:

To remove a repository, you have to do 2 things:

    Remove it from sources.list.

    If it was added by add-apt-repository then you will find it in its own file in /etc/apt/sources.list.d, not in the main sources.list.

    sudo rm /etc/apt/sources.list.d/nemh-systemback-precise.list

    Optional: Stop trusting the key

    Use apt-key list to list trusted keys. Look for an entry like "Launchpad PPA for Kendek" in this case. Then use apt-key del to delete it:

    sudo apt-key del 73C62A1B


