# Hardcode High Memory Parallel Process
export NINJA_HIGHMEM_NUM_JOBS=1

# Media: Import codecs/omx changes from t-alps-q0.mp1-V9.122.1
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/ArrowOS/android_frameworks_av/commit/1fb1c48309cf01deb9e3f8253cb7fa5961c25595.patch")"

# stagefright: remove HW_TEXTRUE usage from SurfaceMediaSource
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/ArrowOS/android_frameworks_av/commit/a727c1f68fd30c8e6a4068db9dc26670d4a78f6c.patch")"

# REThreaded: Use gen- and delete- textures on all render engines
git -C "frameworks/native" am <<<"$(curl -sL "https://github.com/ArrowOS/android_frameworks_native/commit/1e483eea5cf3b4972939a313652aebac42a1561c.patch")"

# soong: add vendor/extra/keys to allowlist
git -C "build/soong" am <<<"$(curl -sL "https://github.com/orkunsdumps/build_soong/commit/cf0ffafbcf72fe9378b97cf8c8f6f047e67496bb.patch")"

# Revert "Update gms path"
git -C "vendor/aosp" am <<<"$(curl -sL "https://github.com/orkunsdumps/vendor_aosp/commit/24c6793bb9d76995b7aca3e37eb2a6ae7f99f7ba.patch")"