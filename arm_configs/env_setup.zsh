#source $HOME/art/google/master/build/envsetup.sh

# Ensure Compilation Command Database is generated during make of AOSP
export SOONG_GEN_COMPDB=1
export SOONG_GEN_COMPDB_DEBUG=1
export SOONG_LINK_COMPDB_TO=$ANDROID_HOST_OUT


