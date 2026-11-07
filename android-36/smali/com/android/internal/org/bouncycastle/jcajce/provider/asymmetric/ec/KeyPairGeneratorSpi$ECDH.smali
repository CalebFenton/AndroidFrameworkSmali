.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$ECDH;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDH"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 282
    const-string v0, "ECDH"

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 283
    return-void
.end method
