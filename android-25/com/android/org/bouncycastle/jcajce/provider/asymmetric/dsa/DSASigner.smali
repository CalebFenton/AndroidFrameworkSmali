.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa224;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lcom/android/org/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;)V
    .locals 0
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/org/bouncycastle/crypto/DSA;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 58
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@7
    .line 55
    return-void
.end method

.method private derDecode([B)[Ljava/math/BigInteger;
    .locals 5
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 245
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .line 246
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x2

    #@9
    new-array v2, v1, [Ljava/math/BigInteger;

    #@b
    .line 247
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    aput-object v1, v2, v3

    #@17
    .line 248
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@20
    move-result-object v1

    #@21
    aput-object v1, v2, v4

    #@23
    .line 246
    return-object v2
.end method

.method private derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@10
    const/4 v2, 0x1

    #@11
    aput-object v1, v0, v2

    #@13
    .line 238
    .local v0, "rs":[Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@15
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    const-string/jumbo v2, "DER"

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method


# virtual methods
.method protected checkKey(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 7
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0xc00

    #@2
    const/16 v5, 0x400

    #@4
    const/16 v4, 0x100

    #@6
    .line 193
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@d
    move-result v1

    #@e
    .line 194
    .local v1, "valueL":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@15
    move-result v2

    #@16
    .line 195
    .local v2, "valueN":I
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@18
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@1b
    move-result v0

    #@1c
    .line 198
    .local v0, "digestSize":I
    if-lt v1, v5, :cond_0

    #@1e
    if-le v1, v6, :cond_1

    #@20
    .line 199
    :cond_0
    new-instance v3, Ljava/security/InvalidKeyException;

    #@22
    const-string/jumbo v4, "valueL values must be between 1024 and 3072 and a multiple of 1024"

    #@25
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 198
    :cond_1
    rem-int/lit16 v3, v1, 0x400

    #@2b
    if-nez v3, :cond_0

    #@2d
    .line 200
    if-ne v1, v5, :cond_2

    #@2f
    const/16 v3, 0xa0

    #@31
    if-eq v2, v3, :cond_2

    #@33
    .line 201
    new-instance v3, Ljava/security/InvalidKeyException;

    #@35
    const-string/jumbo v4, "valueN must be 160 for valueL = 1024"

    #@38
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3

    #@3c
    .line 202
    :cond_2
    const/16 v3, 0x800

    #@3e
    if-ne v1, v3, :cond_3

    #@40
    const/16 v3, 0xe0

    #@42
    if-eq v2, v3, :cond_3

    #@44
    if-eq v2, v4, :cond_3

    #@46
    .line 203
    new-instance v3, Ljava/security/InvalidKeyException;

    #@48
    const-string/jumbo v4, "valueN must be 224 or 256 for valueL = 2048"

    #@4b
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3

    #@4f
    .line 204
    :cond_3
    if-ne v1, v6, :cond_4

    #@51
    if-eq v2, v4, :cond_4

    #@53
    .line 205
    new-instance v3, Ljava/security/InvalidKeyException;

    #@55
    const-string/jumbo v4, "valueN must be 256 for valueL = 3072"

    #@58
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 207
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5e
    instance-of v3, v3, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;

    #@60
    if-nez v3, :cond_5

    #@62
    mul-int/lit8 v3, v0, 0x8

    #@64
    if-le v2, v3, :cond_5

    #@66
    .line 208
    new-instance v3, Ljava/security/InvalidKeyException;

    #@68
    const-string/jumbo v4, "Key is too strong for this signature algorithm"

    #@6b
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v3

    #@6f
    .line 192
    :cond_5
    return-void
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@3
    move-result-object v1

    #@4
    .local v1, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v3, v1

    #@5
    .line 115
    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@a
    move-result-object v0

    #@b
    .line 116
    .local v0, "dsaParam":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->checkKey(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@e
    .line 119
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 121
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@14
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    #@16
    invoke-direct {v2, v1, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@19
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v1, v2

    #@1a
    .line 124
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@1c
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@1f
    .line 125
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@21
    const/4 v4, 0x1

    #@22
    invoke-interface {v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@25
    .line 109
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    #@2
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    #@5
    .line 101
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 6
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    instance-of v4, p1, Ljava/security/interfaces/DSAKey;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 69
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@7
    move-result-object v2

    #@8
    .line 94
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@a
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@d
    .line 95
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@f
    const/4 v5, 0x0

    #@10
    invoke-interface {v4, v5, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@13
    .line 63
    return-void

    #@14
    .line 75
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@17
    move-result-object v0

    #@18
    .line 77
    .local v0, "bytes":[B
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    #@1a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@21
    .line 79
    .end local p1    # "publicKey":Ljava/security/PublicKey;
    .local v3, "publicKey":Ljava/security/PublicKey;
    :try_start_1
    instance-of v4, v3, Ljava/security/interfaces/DSAKey;

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 81
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@28
    move-result-object v2

    #@29
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object p1, v3

    #@2a
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .restart local p1    # "publicKey":Ljava/security/PublicKey;
    goto :goto_0

    #@2b
    .line 85
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local p1    # "publicKey":Ljava/security/PublicKey;
    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :cond_1
    new-instance v4, Ljava/security/InvalidKeyException;

    #@2d
    const-string/jumbo v5, "can\'t recognise key type in DSA based signer"

    #@30
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    .line 89
    :catch_0
    move-exception v1

    #@35
    .local v1, "e":Ljava/lang/Exception;
    move-object p1, v3

    #@36
    .line 90
    .end local v0    # "bytes":[B
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .restart local p1    # "publicKey":Ljava/security/PublicKey;
    :goto_1
    new-instance v4, Ljava/security/InvalidKeyException;

    #@38
    const-string/jumbo v5, "can\'t recognise key type in DSA based signer"

    #@3b
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v4

    #@3f
    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@40
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineSign()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 147
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v3

    #@7
    new-array v1, v3, [B

    #@9
    .line 149
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@10
    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    #@13
    move-result-object v2

    #@14
    .line 155
    .local v2, "sig":[Ljava/math/BigInteger;
    const/4 v3, 0x0

    #@15
    aget-object v3, v2, v3

    #@17
    const/4 v4, 0x1

    #@18
    aget-object v4, v2, v4

    #@1a
    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 158
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@20
    .line 159
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    #@22
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@5
    .line 130
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 139
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 167
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v3

    #@7
    new-array v1, v3, [B

    #@9
    .line 169
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 175
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->derDecode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 182
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@14
    aget-object v4, v2, v4

    #@16
    const/4 v5, 0x1

    #@17
    aget-object v5, v2, v5

    #@19
    invoke-interface {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    #@1c
    move-result v3

    #@1d
    return v3

    #@1e
    .line 178
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@1f
    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    #@21
    const-string/jumbo v4, "error decoding signature bytes."

    #@24
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3
.end method
