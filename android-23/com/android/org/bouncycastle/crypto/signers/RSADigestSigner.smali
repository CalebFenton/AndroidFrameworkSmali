.class public Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;
.source "RSADigestSigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Signer;


# static fields
.field private static final oidMap:Ljava/util/Hashtable;


# instance fields
.field private final algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private forSigning:Z

.field private final rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@7
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@9
    const-string/jumbo v1, "SHA-1"

    #@c
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 49
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@13
    const-string/jumbo v1, "SHA-224"

    #@16
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@1d
    const-string/jumbo v1, "SHA-256"

    #@20
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@27
    const-string/jumbo v1, "SHA-384"

    #@2a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@31
    const-string/jumbo v1, "SHA-512"

    #@34
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@3b
    const-string/jumbo v1, "SHA-512/224"

    #@3e
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@40
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@45
    const-string/jumbo v1, "SHA-512/256"

    #@48
    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@4f
    const-string/jumbo v1, "MD5"

    #@52
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    #@2
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@f
    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "digestOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@7
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    #@a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@f
    .line 73
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@11
    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@13
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@15
    invoke-direct {v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1a
    .line 71
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
    .line 242
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4
    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@7
    .line 244
    .local v0, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    const-string/jumbo v1, "DER"

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method


# virtual methods
.method public generateSignature()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 151
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 153
    new-instance v3, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v4, "RSADigestSigner not initialised for signature generation."

    #@a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 156
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@10
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@13
    move-result v3

    #@14
    new-array v2, v3, [B

    #@16
    .line 157
    .local v2, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@18
    invoke-interface {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@1b
    .line 161
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B

    #@1e
    move-result-object v0

    #@1f
    .line 162
    .local v0, "data":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@21
    array-length v4, v0

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v0, v5, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v3

    #@27
    return-object v3

    #@28
    .line 165
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    #@29
    .line 166
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/CryptoException;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "unable to encode signature: "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    throw v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "withRSA"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    #@2
    .line 100
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@4
    if-eqz v1, :cond_1

    #@6
    move-object v1, p2

    #@7
    .line 102
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@f
    .line 109
    .local v0, "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_0

    #@11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 114
    :cond_0
    if-nez p1, :cond_3

    #@19
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v2, "verification requires public key"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .end local v0    # "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1
    move-object v0, p2

    #@29
    .line 106
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@2b
    .restart local v0    # "k":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    #@2c
    .line 111
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v2, "signing requires private key"

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->reset()V

    #@38
    .line 121
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@3a
    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@3d
    .line 95
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@5
    .line 233
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@5
    .line 128
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 139
    return-void
.end method

.method public verifySignature([B)Z
    .locals 13
    .param p1, "signature"    # [B

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 177
    iget-boolean v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 179
    new-instance v8, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v9, "RSADigestSigner not initialised for verification"

    #@b
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v8

    #@f
    .line 182
    :cond_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@11
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@14
    move-result v10

    #@15
    new-array v3, v10, [B

    #@17
    .line 184
    .local v3, "hash":[B
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@19
    invoke-interface {v10, v3, v9}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@1c
    .line 191
    :try_start_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@1e
    array-length v11, p1

    #@1f
    const/4 v12, 0x0

    #@20
    invoke-interface {v10, p1, v12, v11}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    #@23
    move-result-object v6

    #@24
    .line 192
    .local v6, "sig":[B
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v1

    #@28
    .line 199
    .local v1, "expected":[B
    array-length v10, v6

    #@29
    array-length v11, v1

    #@2a
    if-ne v10, v11, :cond_1

    #@2c
    .line 201
    invoke-static {v6, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@2f
    move-result v8

    #@30
    return v8

    #@31
    .line 195
    .end local v1    # "expected":[B
    .end local v6    # "sig":[B
    :catch_0
    move-exception v0

    #@32
    .line 196
    .local v0, "e":Ljava/lang/Exception;
    return v9

    #@33
    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "expected":[B
    .restart local v6    # "sig":[B
    :cond_1
    array-length v10, v6

    #@34
    array-length v11, v1

    #@35
    add-int/lit8 v11, v11, -0x2

    #@37
    if-ne v10, v11, :cond_5

    #@39
    .line 205
    array-length v10, v6

    #@3a
    array-length v11, v3

    #@3b
    sub-int/2addr v10, v11

    #@3c
    add-int/lit8 v7, v10, -0x2

    #@3e
    .line 206
    .local v7, "sigOffset":I
    array-length v10, v1

    #@3f
    array-length v11, v3

    #@40
    sub-int/2addr v10, v11

    #@41
    add-int/lit8 v2, v10, -0x2

    #@43
    .line 208
    .local v2, "expectedOffset":I
    aget-byte v10, v1, v8

    #@45
    add-int/lit8 v10, v10, -0x2

    #@47
    int-to-byte v10, v10

    #@48
    aput-byte v10, v1, v8

    #@4a
    .line 209
    const/4 v10, 0x3

    #@4b
    aget-byte v11, v1, v10

    #@4d
    add-int/lit8 v11, v11, -0x2

    #@4f
    int-to-byte v11, v11

    #@50
    aput-byte v11, v1, v10

    #@52
    .line 211
    const/4 v5, 0x0

    #@53
    .line 213
    .local v5, "nonEqual":I
    const/4 v4, 0x0

    #@54
    .local v4, "i":I
    :goto_0
    array-length v10, v3

    #@55
    if-ge v4, v10, :cond_2

    #@57
    .line 215
    add-int v10, v7, v4

    #@59
    aget-byte v10, v6, v10

    #@5b
    add-int v11, v2, v4

    #@5d
    aget-byte v11, v1, v11

    #@5f
    xor-int/2addr v10, v11

    #@60
    or-int/2addr v5, v10

    #@61
    .line 213
    add-int/lit8 v4, v4, 0x1

    #@63
    goto :goto_0

    #@64
    .line 218
    :cond_2
    const/4 v4, 0x0

    #@65
    :goto_1
    if-ge v4, v7, :cond_3

    #@67
    .line 220
    aget-byte v10, v6, v4

    #@69
    aget-byte v11, v1, v4

    #@6b
    xor-int/2addr v10, v11

    #@6c
    or-int/2addr v5, v10

    #@6d
    .line 218
    add-int/lit8 v4, v4, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 223
    :cond_3
    if-nez v5, :cond_4

    #@72
    :goto_2
    return v8

    #@73
    :cond_4
    move v8, v9

    #@74
    goto :goto_2

    #@75
    .line 227
    .end local v2    # "expectedOffset":I
    .end local v4    # "i":I
    .end local v5    # "nonEqual":I
    .end local v7    # "sigOffset":I
    :cond_5
    invoke-static {v1, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@78
    .line 229
    return v9
.end method
