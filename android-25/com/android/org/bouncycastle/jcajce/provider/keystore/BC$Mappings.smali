.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/BC$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "BC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/BC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 19
    const-string/jumbo v0, "KeyStore.BKS"

    #@3
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Std"

    #@6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 23
    const-string/jumbo v0, "KeyStore.BouncyCastle"

    #@c
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$BouncyCastleStore"

    #@f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 24
    const-string/jumbo v0, "Alg.Alias.KeyStore.UBER"

    #@15
    const-string/jumbo v1, "BouncyCastle"

    #@18
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 25
    const-string/jumbo v0, "Alg.Alias.KeyStore.BOUNCYCASTLE"

    #@1e
    const-string/jumbo v1, "BouncyCastle"

    #@21
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 26
    const-string/jumbo v0, "Alg.Alias.KeyStore.bouncycastle"

    #@27
    const-string/jumbo v1, "BouncyCastle"

    #@2a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 17
    return-void
.end method
