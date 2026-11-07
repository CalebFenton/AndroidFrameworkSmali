.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DSA.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 10

    .line 30
    const-string v0, "AlgorithmParameters.DSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "AlgorithmParameterGenerator.DSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "KeyPairGenerator.DSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "KeyFactory.DSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "Signature.SHA1withDSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "Alg.Alias.Signature.DSA"

    const-string v6, "SHA1withDSA"

    invoke-interface {p1, v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "Signature.NONEWITHDSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "Alg.Alias.Signature.RAWDSA"

    const-string v2, "NONEWITHDSA"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224"

    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224"

    const-string v3, "DSA"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 69
    const-string v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256"

    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256"

    const-string v3, "DSA"

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 83
    const-string v2, "Alg.Alias.Signature.SHA/DSA"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "Alg.Alias.Signature.SHA1withDSA"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "Alg.Alias.Signature.SHA1WITHDSA"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "Alg.Alias.Signature.DSAwithSHA1"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "Alg.Alias.Signature.DSAWITHSHA1"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "Alg.Alias.Signature.SHA1WithDSA"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "Alg.Alias.Signature.DSAWithSHA1"

    invoke-interface {p1, v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;-><init>()V

    const/4 v3, 0x0

    .line 98
    :goto_83
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v5, v4

    if-eq v3, v5, :cond_ad

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alg.Alias.Signature."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    aget-object v5, v4, v3

    const-string v7, "DSA"

    invoke-virtual {p0, p1, v5, v7, v2}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 105
    aget-object v4, v4, v3

    invoke-virtual {p0, p1, v4, v7}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameterGenerator(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :cond_ad
    return-void
.end method
