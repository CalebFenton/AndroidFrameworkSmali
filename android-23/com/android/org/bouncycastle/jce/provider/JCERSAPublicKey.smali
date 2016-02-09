.class public Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;
.super Ljava/lang/Object;
.source "JCERSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# static fields
.field static final serialVersionUID:J = 0x25226a0e5bfa6c84L


# instance fields
.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    #@5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@e
    .line 53
    .local v1, "pubKey":Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@14
    .line 54
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->publicExponent:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 47
    return-void

    #@1b
    .line 57
    .end local v1    # "pubKey":Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    :catch_0
    move-exception v0

    #@1c
    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v3, "invalid info structure in RSA public key"

    #@21
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 29
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 26
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/RSAPublicKey;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 43
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 40
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 1
    .param p1, "spec"    # Ljava/security/spec/RSAPublicKeySpec;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 36
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    if-ne p1, p0, :cond_0

    #@3
    .line 106
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 109
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 111
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 114
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    #@d
    .line 116
    .local v0, "key":Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 117
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    .line 116
    :cond_2
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    const-string/jumbo v0, "RSA"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    #@b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@16
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@f
    move-result v1

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 123
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 125
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "RSA Public Key"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 126
    const-string/jumbo v2, "            modulus: "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 127
    const-string/jumbo v2, "    public exponent: "

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    return-object v2
.end method
