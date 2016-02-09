.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa224;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.source "DSASigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dsa224"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 250
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;

    #@6
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;-><init>()V

    #@9
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;)V

    #@c
    .line 247
    return-void
.end method
