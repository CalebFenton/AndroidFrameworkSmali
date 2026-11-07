.class public final Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "OpenSSLRSAKeyPairGenerator.java"


# instance fields
.field private blacklist modulusBits:I

.field private blacklist publicExponent:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 47
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 49
    return-void

    :array_10
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 5

    .line 53
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_generate_key_ex(I[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 56
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    move-result-object v1

    .line 57
    .local v1, "privKey":Ljava/security/PrivateKey;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 59
    .local v2, "pubKey":Ljava/security/PublicKey;
    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 64
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 65
    return-void
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 70
    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v0, :cond_1a

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 76
    .local v0, "spec":Ljava/security/spec/RSAKeyGenParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 77
    .local v1, "publicExponent":Ljava/math/BigInteger;
    if-eqz v1, :cond_13

    .line 78
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 81
    :cond_13
    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 82
    return-void

    .line 71
    .end local v0    # "spec":Ljava/security/spec/RSAKeyGenParameterSpec;
    .end local v1    # "publicExponent":Ljava/math/BigInteger;
    :cond_1a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only RSAKeyGenParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
