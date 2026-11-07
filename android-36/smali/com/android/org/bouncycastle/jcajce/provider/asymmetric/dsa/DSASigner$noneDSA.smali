.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.source "DSASigner.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 360
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSAExt;)V

    return-void
.end method
