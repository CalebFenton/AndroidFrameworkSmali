.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "DigestSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA1;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA224;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA256;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA384;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD5;
    }
.end annotation


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "objId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p3, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 72
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 73
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@7
    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@b
    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@10
    .line 70
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 62
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@7
    .line 63
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    .line 59
    return-void
.end method

.method private derEncode([B)[B
    .locals 2
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 251
    return-object p1

    #@5
    .line 254
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@c
    .line 256
    .local v0, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    const-string/jumbo v1, "DER"

    #@f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 111
    if-nez p1, :cond_0

    #@3
    .line 113
    return-object v0

    #@4
    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 241
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 98
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Supplied key ("

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, ") is not a RSAPrivateKey instance"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 101
    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    #@2b
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@2e
    move-result-object v0

    #@2f
    .line 103
    .local v0, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@31
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@34
    .line 105
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@36
    const/4 v2, 0x1

    #@37
    invoke-interface {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@3a
    .line 94
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 83
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Supplied key ("

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, ") is not a RSAPublicKey instance"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 86
    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    #@2b
    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@2e
    move-result-object v0

    #@2f
    .line 88
    .local v0, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@31
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@34
    .line 89
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@36
    const/4 v2, 0x0

    #@37
    invoke-interface {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@3a
    .line 79
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 227
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
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineSign()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 138
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v4

    #@7
    new-array v3, v4, [B

    #@9
    .line 140
    .local v3, "hash":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    invoke-interface {v4, v3, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 144
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    #@11
    move-result-object v0

    #@12
    .line 146
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@14
    array-length v5, v0

    #@15
    const/4 v6, 0x0

    #@16
    invoke-interface {v4, v0, v6, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v4

    #@1a
    return-object v4

    #@1b
    .line 153
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v2

    #@1c
    .line 154
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/SignatureException;

    #@1e
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@27
    .line 150
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/security/SignatureException;

    #@29
    const-string/jumbo v5, "key too small for signature type"

    #@2c
    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v4
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
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@5
    .line 121
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
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 130
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 13
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 162
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@4
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@7
    move-result v10

    #@8
    new-array v3, v10, [B

    #@a
    .line 164
    .local v3, "hash":[B
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@c
    invoke-interface {v10, v3, v9}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@f
    .line 171
    :try_start_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@11
    array-length v11, p1

    #@12
    const/4 v12, 0x0

    #@13
    invoke-interface {v10, p1, v12, v11}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    #@16
    move-result-object v6

    #@17
    .line 173
    .local v6, "sig":[B
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v1

    #@1b
    .line 180
    .local v1, "expected":[B
    array-length v10, v6

    #@1c
    array-length v11, v1

    #@1d
    if-ne v10, v11, :cond_0

    #@1f
    .line 182
    invoke-static {v6, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@22
    move-result v8

    #@23
    return v8

    #@24
    .line 176
    .end local v1    # "expected":[B
    .end local v6    # "sig":[B
    :catch_0
    move-exception v0

    #@25
    .line 177
    .local v0, "e":Ljava/lang/Exception;
    return v9

    #@26
    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "expected":[B
    .restart local v6    # "sig":[B
    :cond_0
    array-length v10, v6

    #@27
    array-length v11, v1

    #@28
    add-int/lit8 v11, v11, -0x2

    #@2a
    if-ne v10, v11, :cond_4

    #@2c
    .line 186
    array-length v10, v6

    #@2d
    array-length v11, v3

    #@2e
    sub-int/2addr v10, v11

    #@2f
    add-int/lit8 v7, v10, -0x2

    #@31
    .line 187
    .local v7, "sigOffset":I
    array-length v10, v1

    #@32
    array-length v11, v3

    #@33
    sub-int/2addr v10, v11

    #@34
    add-int/lit8 v2, v10, -0x2

    #@36
    .line 189
    .local v2, "expectedOffset":I
    aget-byte v10, v1, v8

    #@38
    add-int/lit8 v10, v10, -0x2

    #@3a
    int-to-byte v10, v10

    #@3b
    aput-byte v10, v1, v8

    #@3d
    .line 190
    const/4 v10, 0x3

    #@3e
    aget-byte v11, v1, v10

    #@40
    add-int/lit8 v11, v11, -0x2

    #@42
    int-to-byte v11, v11

    #@43
    aput-byte v11, v1, v10

    #@45
    .line 192
    const/4 v5, 0x0

    #@46
    .line 194
    .local v5, "nonEqual":I
    const/4 v4, 0x0

    #@47
    .local v4, "i":I
    :goto_0
    array-length v10, v3

    #@48
    if-ge v4, v10, :cond_1

    #@4a
    .line 196
    add-int v10, v7, v4

    #@4c
    aget-byte v10, v6, v10

    #@4e
    add-int v11, v2, v4

    #@50
    aget-byte v11, v1, v11

    #@52
    xor-int/2addr v10, v11

    #@53
    or-int/2addr v5, v10

    #@54
    .line 194
    add-int/lit8 v4, v4, 0x1

    #@56
    goto :goto_0

    #@57
    .line 199
    :cond_1
    const/4 v4, 0x0

    #@58
    :goto_1
    if-ge v4, v7, :cond_2

    #@5a
    .line 201
    aget-byte v10, v6, v4

    #@5c
    aget-byte v11, v1, v4

    #@5e
    xor-int/2addr v10, v11

    #@5f
    or-int/2addr v5, v10

    #@60
    .line 199
    add-int/lit8 v4, v4, 0x1

    #@62
    goto :goto_1

    #@63
    .line 204
    :cond_2
    if-nez v5, :cond_3

    #@65
    :goto_2
    return v8

    #@66
    :cond_3
    move v8, v9

    #@67
    goto :goto_2

    #@68
    .line 208
    .end local v2    # "expectedOffset":I
    .end local v4    # "i":I
    .end local v5    # "nonEqual":I
    .end local v7    # "sigOffset":I
    :cond_4
    invoke-static {v1, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@6b
    .line 210
    return v9
.end method
