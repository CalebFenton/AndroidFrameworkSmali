.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDSA;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDH;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDHC;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECMQV;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithmName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@3
    .line 34
    return-void
.end method
