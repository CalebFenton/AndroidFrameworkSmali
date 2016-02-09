.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.source "DSASigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "noneDSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 329
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;-><init>()V

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;

    #@7
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;-><init>()V

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;)V

    #@d
    .line 327
    return-void
.end method
