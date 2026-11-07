.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field private blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private blacklist encoding:Lcom/android/org/bouncycastle/crypto/signers/DSAEncoding;

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist signer:Lcom/android/org/bouncycastle/crypto/DSAExt;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSAExt;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/org/bouncycastle/crypto/signers/DSAEncoding;

    .line 46
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 47
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSAExt;

    return-void
.end method


# virtual methods
.method protected blacklist checkKey(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 7

    .line 137
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    .line 139
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_67

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_67

    .line 141
    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_67

    if-ne v0, v2, :cond_31

    const/16 v2, 0xa0

    if-ne p1, v2, :cond_29

    goto :goto_31

    .line 144
    :cond_29
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueN must be 160 for valueL = 1024"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    :goto_31
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_46

    const/16 v2, 0xe0

    if-eq p1, v2, :cond_46

    if-ne p1, v4, :cond_3e

    goto :goto_46

    .line 146
    :cond_3e
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueN must be 224 or 256 for valueL = 2048"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    :goto_46
    if-ne v0, v3, :cond_53

    if-ne p1, v4, :cond_4b

    goto :goto_53

    .line 148
    :cond_4b
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueN must be 256 for valueL = 3072"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    instance-of p0, p0, Lcom/android/org/bouncycastle/crypto/digests/NullDigest;

    if-nez p0, :cond_66

    mul-int/lit8 v1, v1, 0x8

    if-gt p1, v1, :cond_5e

    goto :goto_66

    .line 151
    :cond_5e
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Key is too strong for this signature algorithm"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    :goto_66
    return-void

    .line 142
    :cond_67
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueL values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 170
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineGetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4

    .line 69
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->checkKey(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_18

    .line 75
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v1, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object p1, v1

    .line 77
    :cond_18
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSAExt;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3

    .line 62
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3

    .line 53
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 55
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSAExt;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 162
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2

    .line 133
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineSign()[B
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 98
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 101
    :try_start_e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSAExt;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object p0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, p0, v2, v0}, Lcom/android/org/bouncycastle/crypto/signers/DSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 106
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 4

    .line 92
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 114
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 118
    :try_start_e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAEncoding;->decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_26

    .line 124
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSAExt;

    aget-object v1, p1, v2

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {p0, v0, v1, p1}, Lcom/android/org/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    return p0

    .line 122
    :catch_26
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "error decoding signature bytes."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
