.class public abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECMQV;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDHC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDH;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDSA;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithmName"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
