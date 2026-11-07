.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "DigestSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD5;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA384;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA224;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA1;
    }
.end annotation


# instance fields
.field private blacklist algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 6
    .param p1, "objId"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p3, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 67
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 69
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 71
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p2, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 56
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 58
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 60
    return-void
.end method

.method private blacklist derEncode([B)[B
    .registers 4
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_5

    .line 246
    return-object p1

    .line 249
    :cond_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 251
    .local v0, "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist getType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    if-nez p1, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 92
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_17

    .line 97
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 99
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 101
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 102
    return-void

    .line 94
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_17
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a RSAPrivateKey instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 77
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_17

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 84
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 85
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 86
    return-void

    .line 79
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_17
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a RSAPublicKey instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSign()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 136
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 140
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    move-result-object v1

    .line 142
    .local v1, "bytes":[B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_19} :catch_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1a

    return-object v2

    .line 148
    .end local v1    # "bytes":[B
    :catch_1a
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "key too small for signature type"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 120
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 129
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 13
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 160
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 167
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 169
    .local v1, "sig":[B
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_66

    .line 174
    .local v3, "expected":[B
    nop

    .line 176
    array-length v4, v1

    array-length v5, v3

    if-ne v4, v5, :cond_23

    .line 178
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    return v2

    .line 180
    :cond_23
    array-length v4, v1

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_62

    .line 182
    const/4 v4, 0x1

    aget-byte v5, v3, v4

    add-int/lit8 v5, v5, -0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 183
    const/4 v5, 0x3

    aget-byte v6, v3, v5

    add-int/lit8 v6, v6, -0x2

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 185
    aget-byte v5, v3, v5

    add-int/lit8 v5, v5, 0x4

    .line 186
    .local v5, "sigOffset":I
    add-int/lit8 v6, v5, 0x2

    .line 187
    .local v6, "expectedOffset":I
    const/4 v7, 0x0

    .line 189
    .local v7, "nonEqual":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_41
    array-length v9, v3

    sub-int/2addr v9, v6

    if-ge v8, v9, :cond_52

    .line 191
    add-int v9, v5, v8

    aget-byte v9, v1, v9

    add-int v10, v6, v8

    aget-byte v10, v3, v10

    xor-int/2addr v9, v10

    or-int/2addr v7, v9

    .line 189
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    .line 194
    .end local v8    # "i":I
    :cond_52
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_53
    if-ge v8, v5, :cond_5e

    .line 196
    aget-byte v9, v1, v8

    aget-byte v10, v3, v8

    xor-int/2addr v9, v10

    or-int/2addr v7, v9

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_53

    .line 199
    .end local v8    # "i":I
    :cond_5e
    if-nez v7, :cond_61

    move v2, v4

    :cond_61
    return v2

    .line 203
    .end local v5    # "sigOffset":I
    .end local v6    # "expectedOffset":I
    .end local v7    # "nonEqual":I
    :cond_62
    invoke-static {v3, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    .line 205
    return v2

    .line 171
    .end local v1    # "sig":[B
    .end local v3    # "expected":[B
    :catch_66
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method
