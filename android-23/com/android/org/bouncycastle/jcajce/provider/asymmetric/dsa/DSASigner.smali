.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$stdDSA;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa224;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;
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
    .line 49
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 54
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@7
    .line 51
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
    .line 215
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .line 216
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x2

    #@9
    new-array v2, v1, [Ljava/math/BigInteger;

    #@b
    .line 217
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
    .line 218
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
    .line 216
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
    .line 207
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
    .line 208
    .local v0, "rs":[Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@15
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    const-string/jumbo v2, "DER"

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 109
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@3
    move-result-object v0

    #@4
    .line 111
    .local v0, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@a
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    #@c
    invoke-direct {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@f
    .end local v0    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v1, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v0, v1

    #@10
    .line 116
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v0    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@12
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@15
    .line 117
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@17
    const/4 v3, 0x1

    #@18
    invoke-interface {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@1b
    .line 105
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
    .line 99
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    #@2
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    #@5
    .line 97
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
    .line 63
    instance-of v4, p1, Ljava/security/interfaces/DSAKey;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 65
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@7
    move-result-object v2

    #@8
    .line 90
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@a
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@d
    .line 91
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@f
    const/4 v5, 0x0

    #@10
    invoke-interface {v4, v5, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@13
    .line 59
    return-void

    #@14
    .line 71
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@17
    move-result-object v0

    #@18
    .line 73
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
    .line 75
    .end local p1    # "publicKey":Ljava/security/PublicKey;
    .local v3, "publicKey":Ljava/security/PublicKey;
    :try_start_1
    instance-of v4, v3, Ljava/security/interfaces/DSAKey;

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 77
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
    .line 81
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
    .line 85
    :catch_0
    move-exception v1

    #@35
    .local v1, "e":Ljava/lang/Exception;
    move-object p1, v3

    #@36
    .line 86
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
    .line 85
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
    .line 190
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
    .line 180
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
    .line 139
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v3

    #@7
    new-array v1, v3, [B

    #@9
    .line 141
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@10
    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    #@13
    move-result-object v2

    #@14
    .line 147
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
    .line 150
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@20
    .line 151
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    #@22
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@5
    .line 122
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
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 131
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
    .line 159
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v3

    #@7
    new-array v1, v3, [B

    #@9
    .line 161
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->derDecode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 174
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
    .line 170
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@1f
    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    #@21
    const-string/jumbo v4, "error decoding signature bytes."

    #@24
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3
.end method
