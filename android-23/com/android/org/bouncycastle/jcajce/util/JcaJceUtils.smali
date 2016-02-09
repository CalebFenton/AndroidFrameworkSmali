.class public Lcom/android/org/bouncycastle/jcajce/util/JcaJceUtils;
.super Ljava/lang/Object;
.source "JcaJceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static extractParameters(Ljava/security/AlgorithmParameters;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    :try_start_0
    const-string/jumbo v2, "ASN.1"

    #@3
    invoke-virtual {p0, v2}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 50
    .local v0, "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    return-object v0

    #@c
    .line 46
    .end local v0    # "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v1

    #@d
    .line 47
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    #@10
    move-result-object v2

    #@11
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0
.end method

.method public static getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "digestAlgOID"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 85
    const-string/jumbo v0, "MD5"

    #@b
    return-object v0

    #@c
    .line 87
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 89
    const-string/jumbo v0, "SHA1"

    #@17
    return-object v0

    #@18
    .line 91
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 93
    const-string/jumbo v0, "SHA224"

    #@23
    return-object v0

    #@24
    .line 95
    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 97
    const-string/jumbo v0, "SHA256"

    #@2f
    return-object v0

    #@30
    .line 99
    :cond_3
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 101
    const-string/jumbo v0, "SHA384"

    #@3b
    return-object v0

    #@3c
    .line 103
    :cond_4
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 105
    const-string/jumbo v0, "SHA512"

    #@47
    return-object v0

    #@48
    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

.method public static loadParameters(Ljava/security/AlgorithmParameters;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .param p1, "sParams"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v2, "ASN.1"

    #@b
    invoke-virtual {p0, v1, v2}, Ljava/security/AlgorithmParameters;->init([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 61
    :goto_0
    return-void

    #@f
    .line 69
    :catch_0
    move-exception v0

    #@10
    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    #@1b
    goto :goto_0
.end method
