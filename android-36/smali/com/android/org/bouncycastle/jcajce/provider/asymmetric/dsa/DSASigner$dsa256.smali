.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.source "DSASigner.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 241
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSAExt;)V

    return-void
.end method
