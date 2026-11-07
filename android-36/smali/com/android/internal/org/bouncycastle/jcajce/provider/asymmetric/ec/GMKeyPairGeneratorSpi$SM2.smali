.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$SM2;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;
.source "GMKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SM2"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 256
    const-string v0, "SM2"

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 257
    return-void
.end method
