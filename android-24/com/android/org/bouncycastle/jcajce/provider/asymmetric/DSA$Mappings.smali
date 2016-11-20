.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DSA;
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
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 8
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 23
    const-string/jumbo v0, "AlgorithmParameters.DSA"

    #@3
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi"

    #@6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 25
    const-string/jumbo v0, "AlgorithmParameterGenerator.DSA"

    #@c
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi"

    #@f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 27
    const-string/jumbo v0, "KeyPairGenerator.DSA"

    #@15
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi"

    #@18
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 28
    const-string/jumbo v0, "KeyFactory.DSA"

    #@1e
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi"

    #@21
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 31
    const-string/jumbo v0, "Signature.SHA1withDSA"

    #@27
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA"

    #@2a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 33
    const-string/jumbo v0, "Signature.NONEWITHDSA"

    #@30
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA"

    #@33
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 35
    const-string/jumbo v0, "Alg.Alias.Signature.RAWDSA"

    #@39
    const-string/jumbo v1, "NONEWITHDSA"

    #@3c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 46
    const-string/jumbo v2, "SHA224"

    #@42
    const-string/jumbo v3, "DSA"

    #@45
    const-string/jumbo v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224"

    #@48
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    move-object v0, p0

    #@4b
    move-object v1, p1

    #@4c
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@4f
    .line 47
    const-string/jumbo v2, "SHA256"

    #@52
    const-string/jumbo v3, "DSA"

    #@55
    const-string/jumbo v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256"

    #@58
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    move-object v0, p0

    #@5b
    move-object v1, p1

    #@5c
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@5f
    .line 54
    const-string/jumbo v0, "Alg.Alias.Signature.DSA"

    #@62
    const-string/jumbo v1, "SHA1withDSA"

    #@65
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    .line 57
    const-string/jumbo v0, "Alg.Alias.Signature.SHA/DSA"

    #@6b
    const-string/jumbo v1, "SHA1withDSA"

    #@6e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 58
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1withDSA"

    #@74
    const-string/jumbo v1, "SHA1withDSA"

    #@77
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 59
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WITHDSA"

    #@7d
    const-string/jumbo v1, "SHA1withDSA"

    #@80
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@83
    .line 60
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    #@86
    const-string/jumbo v1, "SHA1withDSA"

    #@89
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@8c
    .line 61
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    #@8f
    const-string/jumbo v1, "SHA1withDSA"

    #@92
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@95
    .line 62
    const-string/jumbo v0, "Alg.Alias.Signature.DSAwithSHA1"

    #@98
    const-string/jumbo v1, "SHA1withDSA"

    #@9b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9e
    .line 63
    const-string/jumbo v0, "Alg.Alias.Signature.DSAWITHSHA1"

    #@a1
    const-string/jumbo v1, "SHA1withDSA"

    #@a4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@a7
    .line 64
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WithDSA"

    #@aa
    const-string/jumbo v1, "SHA1withDSA"

    #@ad
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@b0
    .line 65
    const-string/jumbo v0, "Alg.Alias.Signature.DSAWithSHA1"

    #@b3
    const-string/jumbo v1, "SHA1withDSA"

    #@b6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@b9
    .line 72
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

    #@bb
    invoke-direct {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;-><init>()V

    #@be
    .line 74
    .local v7, "keyFact":Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    const/4 v6, 0x0

    #@bf
    .local v6, "i":I
    :goto_0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c1
    array-length v0, v0

    #@c2
    if-eq v6, v0, :cond_0

    #@c4
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v1, "Alg.Alias.Signature."

    #@cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    aget-object v1, v1, v6

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v0

    #@dc
    const-string/jumbo v1, "SHA1withDSA"

    #@df
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e2
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e4
    aget-object v0, v0, v6

    #@e6
    const-string/jumbo v1, "DSA"

    #@e9
    invoke-virtual {p0, p1, v0, v1, v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@ec
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    aget-object v0, v0, v6

    #@f0
    const-string/jumbo v1, "DSA"

    #@f3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOidAlgorithmParameters(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@f6
    .line 74
    add-int/lit8 v6, v6, 0x1

    #@f8
    goto :goto_0

    #@f9
    .line 21
    :cond_0
    return-void
.end method
