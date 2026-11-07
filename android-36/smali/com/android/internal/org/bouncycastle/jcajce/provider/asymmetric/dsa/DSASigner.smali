.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa224;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/DSAExt;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    .line 45
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 40
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 47
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    .line 48
    return-void
.end method


# virtual methods
.method protected blacklist checkKey(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 8
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 138
    .local v0, "valueL":I
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 139
    .local v1, "valueN":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 141
    .local v2, "digestSize":I
    const/16 v3, 0x400

    if-lt v0, v3, :cond_6a

    const/16 v4, 0xc00

    if-gt v0, v4, :cond_6a

    rem-int/lit16 v5, v0, 0x400

    if-nez v5, :cond_6a

    .line 143
    if-ne v0, v3, :cond_32

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_29

    goto :goto_32

    .line 144
    :cond_29
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueN must be 160 for valueL = 1024"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_32
    :goto_32
    const/16 v3, 0x800

    const/16 v5, 0x100

    if-ne v0, v3, :cond_48

    const/16 v3, 0xe0

    if-eq v1, v3, :cond_48

    if-ne v1, v5, :cond_3f

    goto :goto_48

    .line 146
    :cond_3f
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueN must be 224 or 256 for valueL = 2048"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_48
    :goto_48
    if-ne v0, v4, :cond_56

    if-ne v1, v5, :cond_4d

    goto :goto_56

    .line 148
    :cond_4d
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueN must be 256 for valueL = 3072"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_56
    :goto_56
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    instance-of v3, v3, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;

    if-nez v3, :cond_69

    mul-int/lit8 v3, v2, 0x8

    if-gt v1, v3, :cond_61

    goto :goto_69

    .line 151
    :cond_61
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Key is too strong for this signature algorithm"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_69
    :goto_69
    return-void

    .line 142
    :cond_6a
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueL values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineGetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 71
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 72
    .local v1, "dsaParam":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->checkKey(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 73
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_1a

    .line 75
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v2

    .line 77
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 78
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 79
    return-void
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 62
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 64
    return-void
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 54
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 55
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 56
    return-void
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 98
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 101
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v1

    .line 102
    .local v1, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    aget-object v2, v1, v2

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {v3, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_26

    return-object v2

    .line 104
    .end local v1    # "sig":[Ljava/math/BigInteger;
    :catch_26
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

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

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 85
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

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 93
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 7
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 114
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 118
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;->decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_27

    .line 123
    .local v1, "sig":[Ljava/math/BigInteger;
    nop

    .line 124
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v3, v0, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v2

    return v2

    .line 120
    .end local v1    # "sig":[Ljava/math/BigInteger;
    :catch_27
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "error decoding signature bytes."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
