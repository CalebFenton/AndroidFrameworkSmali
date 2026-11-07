.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDHC;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.source "KeyFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDHC"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 400
    const-string v0, "ECDHC"

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 401
    return-void
.end method
