.class Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;
.super Ljava/lang/Object;
.source "X509SignatureUtil.java"


# static fields
.field private static final derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@4
    .line 28
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "digestAlgOID"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 99
    const-string/jumbo v0, "MD5"

    #@b
    return-object v0

    #@c
    .line 101
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 103
    const-string/jumbo v0, "SHA1"

    #@17
    return-object v0

    #@18
    .line 105
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 107
    const-string/jumbo v0, "SHA224"

    #@23
    return-object v0

    #@24
    .line 109
    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 111
    const-string/jumbo v0, "SHA256"

    #@2f
    return-object v0

    #@30
    .line 113
    :cond_3
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 115
    const-string/jumbo v0, "SHA384"

    #@3b
    return-object v0

    #@3c
    .line 117
    :cond_4
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 119
    const-string/jumbo v0, "SHA512"

    #@47
    return-object v0

    #@48
    .line 141
    :cond_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

.method static getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v1

    #@4
    .line 69
    .local v1, "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v1, :cond_0

    #@6
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@8
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Null;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    move-result-object v2

    #@1b
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 81
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@26
    move-result-object v0

    #@27
    .line 83
    .local v0, "ecDsaParams":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@30
    move-result-object v3

    #@31
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    move-result-object v3

    #@35
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, "withECDSA"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    return-object v2
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
    .line 37
    if-eqz p1, :cond_0

    #@2
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->derNull:Lcom/android/org/bouncycastle/asn1/ASN1Null;

    #@4
    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Null;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 35
    :cond_0
    :goto_0
    return-void

    #@b
    .line 39
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
    .line 43
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
    .line 50
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
    .line 54
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
    .line 57
    :catch_0
    move-exception v1

    #@3a
    .line 58
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
    .line 46
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    #@59
    .line 47
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
