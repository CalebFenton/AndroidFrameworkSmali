.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "EC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC;
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
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 6
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 26
    const-string/jumbo v0, "KeyAgreement.ECDH"

    #@3
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DH"

    #@6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 35
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    const-string/jumbo v1, "EC"

    #@e
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    #@10
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    #@13
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@16
    .line 37
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    const-string/jumbo v1, "EC"

    #@1b
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    #@1d
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    #@20
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@23
    .line 53
    const-string/jumbo v0, "KeyFactory.EC"

    #@26
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$EC"

    #@29
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 61
    const-string/jumbo v0, "KeyPairGenerator.EC"

    #@2f
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$EC"

    #@32
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 81
    const-string/jumbo v0, "Signature.ECDSA"

    #@38
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA"

    #@3b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 82
    const-string/jumbo v0, "Signature.NONEwithECDSA"

    #@41
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAnone"

    #@44
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    .line 84
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1withECDSA"

    #@4a
    const-string/jumbo v1, "ECDSA"

    #@4d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 85
    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    #@53
    const-string/jumbo v1, "ECDSA"

    #@56
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@59
    .line 86
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WITHECDSA"

    #@5c
    const-string/jumbo v1, "ECDSA"

    #@5f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 87
    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAWITHSHA1"

    #@65
    const-string/jumbo v1, "ECDSA"

    #@68
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6b
    .line 88
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WithECDSA"

    #@6e
    const-string/jumbo v1, "ECDSA"

    #@71
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 89
    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAWithSHA1"

    #@77
    const-string/jumbo v1, "ECDSA"

    #@7a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@7d
    .line 90
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    #@80
    const-string/jumbo v1, "ECDSA"

    #@83
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@86
    .line 102
    const-string/jumbo v2, "SHA224"

    #@89
    const-string/jumbo v3, "ECDSA"

    #@8c
    const-string/jumbo v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA224"

    #@8f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@91
    move-object v0, p0

    #@92
    move-object v1, p1

    #@93
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@96
    .line 103
    const-string/jumbo v2, "SHA256"

    #@99
    const-string/jumbo v3, "ECDSA"

    #@9c
    const-string/jumbo v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA256"

    #@9f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a1
    move-object v0, p0

    #@a2
    move-object v1, p1

    #@a3
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@a6
    .line 104
    const-string/jumbo v2, "SHA384"

    #@a9
    const-string/jumbo v3, "ECDSA"

    #@ac
    const-string/jumbo v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA384"

    #@af
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b1
    move-object v0, p0

    #@b2
    move-object v1, p1

    #@b3
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@b6
    .line 105
    const-string/jumbo v2, "SHA512"

    #@b9
    const-string/jumbo v3, "ECDSA"

    #@bc
    const-string/jumbo v4, "com.android.org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA512"

    #@bf
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c1
    move-object v0, p0

    #@c2
    move-object v1, p1

    #@c3
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;->addSignatureAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@c6
    .line 24
    return-void
.end method
