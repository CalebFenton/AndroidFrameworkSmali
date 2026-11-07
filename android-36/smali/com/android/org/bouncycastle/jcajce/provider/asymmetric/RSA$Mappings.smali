.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "RSA.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 5

    .line 49
    const-string v0, "AlgorithmParameters.PSS"

    const-string v1, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$PSS"

    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA;->-$$Nest$sfgetgeneralRsaAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Cipher.RSA"

    invoke-interface {p1, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    const-string v0, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding"

    invoke-interface {p1, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "Alg.Alias.Cipher.RSA/RAW"

    const-string v1, "RSA"

    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "Alg.Alias.Cipher.RSA//RAW"

    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "Alg.Alias.Cipher.RSA//NOPADDING"

    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "KeyFactory.RSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "KeyPairGenerator.RSA"

    const-string v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;-><init>()V

    .line 114
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 115
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 116
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
