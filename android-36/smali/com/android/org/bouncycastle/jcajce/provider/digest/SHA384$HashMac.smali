.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA384$HashMac;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "SHA384.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    return-void
.end method
