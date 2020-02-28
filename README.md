CounosX Core integration/staging tree
=====================================

[![Build Status](https://travis-ci.org/counosx-project/counosx.svg?branch=master)](https://travis-ci.org/counosx-project/counosx)

https://counos.io

What is CounosX?
----------------

CounosX is an experimental digital currency that enables instant payments to
anyone, anywhere in the world. CounosX uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. CounosX Core is the name of open source
software which enables the use of this currency.

For more information, as well as an immediately useable, binary version of
the CounosX Core software, see [https://counos.io](https://counos.io).

Official Nodes
-------------

95.216.122.130

95.216.250.34	

95.216.250.35

95.216.240.82

95.216.122.135

95.216.122.138

95.216.122.142

5.9.227.227

5.9.227.228

5.9.227.230

51.89.161.147

you can add these nodes by this command:

counosx-cli addnode 95.216.237.187 add

Block Explorer
-------------

https://ccxxblocks.counos.org


License
-------

CounosX Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

How to compile source code
-----------
    sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libcurl4-openssl-dev
    sudo apt-get install libboost-all-dev

    sudo apt-get install software-properties-common

    sudo add-apt-repository ppa:bitcoin/bitcoin

    sudo apt-get update

    sudo apt-get install libdb4.8-dev libdb4.8++-dev


    sudo apt-get install libzmq3-dev



    ./autogen.sh
    ./configure --disable-tests --disable-bench
    make
    make install #optional
