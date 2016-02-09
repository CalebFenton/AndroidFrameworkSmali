.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;
.super Ljava/lang/Object;
.source "BCRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# static fields
.field private static final DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field static final serialVersionUID:J = 0x25226a0e5bfa6c84L


# instance fields
.field private transient algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b
    .line 19
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->populateFromPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@6
    .line 55
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@d
    .line 35
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@13
    .line 31
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/RSAPublicKey;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 50
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@d
    .line 51
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@13
    .line 47
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 1
    .param p1, "spec"    # Ljava/security/spec/RSAPublicKeySpec;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 42
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@d
    .line 43
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@13
    .line 39
    return-void
.end method

.method private populateFromPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    #@7
    move-result-object v1

    #@8
    .line 66
    .local v1, "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@e
    .line 67
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@14
    .line 68
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 60
    return-void

    #@1b
    .line 71
    .end local v1    # "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    :catch_0
    move-exception v0

    #@1c
    .line 72
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v3, "invalid info structure in RSA public key"

    #@21
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 154
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 148
    :goto_0
    return-void

    #@e
    .line 161
    :catch_0
    move-exception v0

    #@f
    .line 162
    .local v0, "e":Ljava/io/EOFException;
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@11
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@13
    goto :goto_0

    #@14
    .line 157
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v1

    #@15
    .line 158
    .local v1, "e":Ljava/io/OptionalDataException;
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@17
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@19
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 172
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@16
    .line 168
    :cond_0
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
    .line 118
    if-ne p1, p0, :cond_0

    #@3
    .line 120
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 123
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 125
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 128
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    #@d
    .line 130
    .local v0, "key":Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

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
    .line 131
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

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
    .line 130
    :cond_2
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "RSA"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    #@4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

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
    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 137
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 139
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "RSA Public Key"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 140
    const-string/jumbo v2, "            modulus: "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getModulus()Ljava/math/BigInteger;

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
    .line 141
    const-string/jumbo v2, "    public exponent: "

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

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
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    return-object v2
.end method
