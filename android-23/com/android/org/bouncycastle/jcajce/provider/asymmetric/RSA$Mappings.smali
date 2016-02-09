.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "RSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA;
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
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    #@3
    return-void
.end method

.method private addDigestSignature(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 9
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .param p2, "digest"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v7

    #@9
    const-string/jumbo v8, "WITHRSA"

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    .line 228
    .local v6, "mainName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    const-string/jumbo v8, "withRSA"

    #@20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 229
    .local v1, "jdk11Variation1":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    const-string/jumbo v8, "WithRSA"

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 230
    .local v2, "jdk11Variation2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    const-string/jumbo v8, "/"

    #@48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    const-string/jumbo v8, "RSA"

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    .line 231
    .local v0, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    const-string/jumbo v8, "WITHRSAENCRYPTION"

    #@63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 232
    .local v5, "longName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    const-string/jumbo v8, "withRSAEncryption"

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    .line 233
    .local v3, "longJdk11Variation1":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    const-string/jumbo v8, "WithRSAEncryption"

    #@8b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    .line 235
    .local v4, "longJdk11Variation2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v8, "Signature."

    #@9b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v7

    #@9f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    invoke-interface {p1, v7, p3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@aa
    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@b2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v7

    #@be
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@c1
    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@c9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v7

    #@cd
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v7

    #@d1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v7

    #@d5
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@d8
    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@e0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v7

    #@e4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v7

    #@e8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v7

    #@ec
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@ef
    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@f7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v7

    #@ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v7

    #@103
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@106
    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@10e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v7

    #@112
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v7

    #@116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v7

    #@11a
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@11d
    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v7

    #@129
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v7

    #@12d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v7

    #@131
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@134
    .line 243
    if-eqz p4, :cond_0

    #@136
    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@13e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v7

    #@142
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v7

    #@146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v7

    #@14a
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@14d
    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v8, "Alg.Alias.Signature.OID."

    #@155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v7

    #@159
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v7

    #@15d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v7

    #@161
    invoke-interface {p1, v7, v6}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@164
    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 28
    const-string/jumbo v1, "AlgorithmParameters.OAEP"

    #@3
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$OAEP"

    #@6
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 50
    const-string/jumbo v1, "Cipher.RSA"

    #@c
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding"

    #@f
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 52
    const-string/jumbo v1, "Alg.Alias.Cipher.RSA/RAW"

    #@15
    const-string/jumbo v2, "RSA"

    #@18
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 65
    const-string/jumbo v1, "Alg.Alias.Cipher.RSA//RAW"

    #@1e
    const-string/jumbo v2, "RSA"

    #@21
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 66
    const-string/jumbo v1, "Alg.Alias.Cipher.RSA//NOPADDING"

    #@27
    const-string/jumbo v2, "RSA"

    #@2a
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 73
    const-string/jumbo v1, "KeyFactory.RSA"

    #@30
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi"

    #@33
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 74
    const-string/jumbo v1, "KeyPairGenerator.RSA"

    #@39
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi"

    #@3c
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;

    #@41
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;-><init>()V

    #@44
    .line 78
    .local v0, "keyFact":Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    const-string/jumbo v2, "RSA"

    #@49
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@4c
    .line 79
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    const-string/jumbo v2, "RSA"

    #@51
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@54
    .line 80
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    const-string/jumbo v2, "RSA"

    #@59
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->registerOid(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    #@5c
    .line 131
    const-string/jumbo v1, "MessageDigest"

    #@5f
    const-string/jumbo v2, "MD5"

    #@62
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_0

    #@68
    .line 133
    const-string/jumbo v1, "MD5"

    #@6b
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD5"

    #@6e
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@73
    .line 140
    :cond_0
    const-string/jumbo v1, "MessageDigest"

    #@76
    const-string/jumbo v2, "SHA1"

    #@79
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    #@7c
    move-result v1

    #@7d
    if-eqz v1, :cond_1

    #@7f
    .line 150
    const-string/jumbo v1, "SHA1"

    #@82
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA1"

    #@85
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@87
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@8a
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v2, "Alg.Alias.Signature."

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    sget-object v2, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    const-string/jumbo v2, "SHA1WITHRSA"

    #@a3
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@a6
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v2, "Alg.Alias.Signature.OID."

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    sget-object v2, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v1

    #@b8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v1

    #@bc
    const-string/jumbo v2, "SHA1WITHRSA"

    #@bf
    invoke-interface {p1, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@c2
    .line 166
    :cond_1
    const-string/jumbo v1, "SHA224"

    #@c5
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA224"

    #@c8
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@cd
    .line 167
    const-string/jumbo v1, "SHA256"

    #@d0
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA256"

    #@d3
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d5
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@d8
    .line 168
    const-string/jumbo v1, "SHA384"

    #@db
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA384"

    #@de
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e0
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@e3
    .line 169
    const-string/jumbo v1, "SHA512"

    #@e6
    const-string/jumbo v2, "com.android.org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512"

    #@e9
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@eb
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;->addDigestSignature(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@ee
    .line 26
    return-void
.end method
