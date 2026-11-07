.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256$HashMac;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "SHA256.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lcom/android/org/bouncycastle/crypto/SavableDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    return-void
.end method
