.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DH.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH;
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
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 22
    const-string/jumbo v0, "KeyPairGenerator.DH"

    #@3
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi"

    #@6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 23
    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN"

    #@c
    const-string/jumbo v1, "DH"

    #@f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 25
    const-string/jumbo v0, "KeyAgreement.DH"

    #@15
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi"

    #@18
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 26
    const-string/jumbo v0, "Alg.Alias.KeyAgreement.DIFFIEHELLMAN"

    #@1e
    const-string/jumbo v1, "DH"

    #@21
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 28
    const-string/jumbo v0, "KeyFactory.DH"

    #@27
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi"

    #@2a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 29
    const-string/jumbo v0, "Alg.Alias.KeyFactory.DIFFIEHELLMAN"

    #@30
    const-string/jumbo v1, "DH"

    #@33
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 31
    const-string/jumbo v0, "AlgorithmParameters.DH"

    #@39
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi"

    #@3c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 32
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN"

    #@42
    const-string/jumbo v1, "DH"

    #@45
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 34
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN"

    #@4b
    const-string/jumbo v1, "DH"

    #@4e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 36
    const-string/jumbo v0, "AlgorithmParameterGenerator.DH"

    #@54
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParameterGeneratorSpi"

    #@57
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c
    const-string/jumbo v1, "DH"

    #@5f
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;

    #@61
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;-><init>()V

    #@64
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@67
    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@69
    const-string/jumbo v1, "DH"

    #@6c
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;

    #@6e
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;-><init>()V

    #@71
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@74
    .line 20
    return-void
.end method
