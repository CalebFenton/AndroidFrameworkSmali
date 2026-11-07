.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 9
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 30
    const-string v0, "AlgorithmParameters.DSA"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "AlgorithmParameterGenerator.DSA"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "KeyPairGenerator.DSA"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "KeyFactory.DSA"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "Signature.SHA1withDSA"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "Alg.Alias.Signature.DSA"

    const-string v6, "SHA1withDSA"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "Signature.NONEWITHDSA"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "Alg.Alias.Signature.RAWDSA"

    const-string v2, "NONEWITHDSA"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224"

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224"

    const-string v3, "DSA"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 69
    const-string v4, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256"

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256"

    const-string v3, "DSA"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 83
    const-string v2, "Alg.Alias.Signature.SHA/DSA"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "Alg.Alias.Signature.SHA1withDSA"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "Alg.Alias.Signature.SHA1WITHDSA"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "Alg.Alias.Signature.DSAwithSHA1"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "Alg.Alias.Signature.DSAWITHSHA1"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "Alg.Alias.Signature.SHA1WithDSA"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "Alg.Alias.Signature.DSAWithSHA1"

    invoke-interface {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;-><init>()V

    .line 98
    .local v2, "keyFact":Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_83
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v4, v4

    if-eq v3, v4, :cond_b5

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v4, v4, v3

    const-string v5, "DSA"

    invoke-virtual {p0, p1, v4, v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOid(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 105
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOidAlgorithmParameterGenerator(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    .line 107
    .end local v3    # "i":I
    :cond_b5
    return-void
.end method
