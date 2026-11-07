.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/PKCS12$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "PKCS12.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 3

    .line 26
    const-string p0, "KeyStore.PKCS12"

    const-string v0, "com.android.org.bouncycastle.jcajce.provider.keystore.pkcs12.PKCS12KeyStoreSpi$BCPKCS12KeyStore"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
