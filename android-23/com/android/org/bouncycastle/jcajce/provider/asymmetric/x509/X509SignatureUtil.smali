.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;
.super Ljava/lang/Object;
.source "X509SignatureUtil.java"


# static fields
.field private static final derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@4
    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "digestAlgOID"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 126
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 128
    const-string/jumbo v0, "MD5"

    #@b
    return-object v0

    #@c
    .line 130
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 132
    const-string/jumbo v0, "SHA1"

    #@17
    return-object v0

    #@18
    .line 134
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 136
    const-string/jumbo v0, "SHA224"

    #@23
    return-object v0

    #@24
    .line 138
    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 140
    const-string/jumbo v0, "SHA256"

    #@2f
    return-object v0

    #@30
    .line 142
    :cond_3
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 144
    const-string/jumbo v0, "SHA384"

    #@3b
    return-object v0

    #@3c
    .line 146
    :cond_4
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 148
    const-string/jumbo v0, "SHA512"

    #@47
    return-object v0

    #@48
    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

.method static getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .locals 10
    .param p0, "sigAlgId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v3

    #@4
    .line 74
    .local v3, "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v3, :cond_0

    #@6
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@8
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Null;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 90
    :cond_0
    const-string/jumbo v7, "BC"

    #@11
    invoke-static {v7}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v4

    #@15
    .line 92
    .local v4, "prov":Ljava/security/Provider;
    if-eqz v4, :cond_3

    #@17
    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v8, "Alg.Alias.Signature."

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v4, v7}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 96
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@39
    .line 98
    return-object v0

    #@3a
    .line 76
    .end local v0    # "algName":Ljava/lang/String;
    .end local v4    # "prov":Ljava/security/Provider;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d
    move-result-object v7

    #@3e
    sget-object v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@40
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_2

    #@46
    .line 78
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@49
    move-result-object v6

    #@4a
    .line 80
    .local v6, "rsaParams":Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    new-instance v7, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    move-result-object v8

    #@57
    invoke-static {v8}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    const-string/jumbo v8, "withRSAandMGF1"

    #@62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    return-object v7

    #@6b
    .line 82
    .end local v6    # "rsaParams":Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    move-result-object v7

    #@6f
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v7

    #@75
    if-eqz v7, :cond_0

    #@77
    .line 84
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@7a
    move-result-object v1

    #@7b
    .line 86
    .local v1, "ecDsaParams":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v8, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const/4 v7, 0x0

    #@81
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@84
    move-result-object v7

    #@85
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@87
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    const-string/jumbo v8, "withECDSA"

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    return-object v7

    #@9b
    .line 102
    .end local v1    # "ecDsaParams":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "prov":Ljava/security/Provider;
    :cond_3
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@9e
    move-result-object v5

    #@9f
    .line 107
    .local v5, "provs":[Ljava/security/Provider;
    const/4 v2, 0x0

    #@a0
    .local v2, "i":I
    :goto_0
    array-length v7, v5

    #@a1
    if-eq v2, v7, :cond_5

    #@a3
    .line 109
    aget-object v7, v5, v2

    #@a5
    new-instance v8, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v9, "Alg.Alias.Signature."

    #@ad
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v8

    #@bd
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v8

    #@c1
    invoke-virtual {v7, v8}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c4
    move-result-object v0

    #@c5
    .line 110
    .restart local v0    # "algName":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@c7
    .line 112
    return-object v0

    #@c8
    .line 107
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@ca
    goto :goto_0

    #@cb
    .line 116
    .end local v0    # "algName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@d2
    move-result-object v7

    #@d3
    return-object v7
.end method

.method static setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 6
    .param p0, "signature"    # Ljava/security/Signature;
    .param p1, "params"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    if-eqz p1, :cond_0

    #@2
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@4
    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Null;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 40
    :cond_0
    :goto_0
    return-void

    #@b
    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {p0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    #@12
    move-result-object v4

    #@13
    invoke-static {v3, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    #@16
    move-result-object v2

    #@17
    .line 48
    .local v2, "sigParams":Ljava/security/AlgorithmParameters;
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@22
    .line 55
    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "MGF1"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 59
    :try_start_1
    const-class v3, Ljava/security/spec/PSSParameterSpec;

    #@31
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {p0, v3}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 62
    :catch_0
    move-exception v1

    #@3a
    .line 63
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/SignatureException;

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Exception extracting parameters: "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@57
    throw v3

    #@58
    .line 51
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    #@59
    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/SignatureException;

    #@5b
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "IOException decoding parameters: "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@76
    throw v3
.end method
