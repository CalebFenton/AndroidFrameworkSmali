.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/BC$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "BC.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 3

    .line 27
    const-string p0, "KeyStore.BKS"

    const-string v0, "com.android.org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Std"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string p0, "KeyStore.BouncyCastle"

    const-string v0, "com.android.org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$BouncyCastleStore"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p0, "Alg.Alias.KeyStore.UBER"

    const-string v0, "BouncyCastle"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string p0, "Alg.Alias.KeyStore.BOUNCYCASTLE"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string p0, "Alg.Alias.KeyStore.bouncycastle"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
