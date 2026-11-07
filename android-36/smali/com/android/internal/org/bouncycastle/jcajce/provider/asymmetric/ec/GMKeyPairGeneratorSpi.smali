.class public abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "GMKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$SM2;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;
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
