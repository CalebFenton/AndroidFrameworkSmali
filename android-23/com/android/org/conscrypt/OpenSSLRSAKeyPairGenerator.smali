.class public Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "OpenSSLRSAKeyPairGenerator.java"


# instance fields
.field private modulusBits:I

.field private publicExponent:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    #@3
    .line 33
    const/4 v0, 0x3

    #@4
    new-array v0, v0, [B

    #@6
    fill-array-data v0, :array_0

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    #@b
    .line 40
    const/16 v0, 0x800

    #@d
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    #@f
    .line 29
    return-void

    #@10
    .line 33
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    #@0
    .prologue
    .line 44
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    #@4
    .line 45
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    #@6
    .line 44
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_generate_key_ex(I[B)J

    #@9
    move-result-wide v4

    #@a
    invoke-direct {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@d
    .line 47
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@10
    move-result-object v1

    #@11
    .line 48
    .local v1, "privKey":Ljava/security/PrivateKey;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@13
    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@16
    .line 50
    .local v2, "pubKey":Ljava/security/PublicKey;
    new-instance v3, Ljava/security/KeyPair;

    #@18
    invoke-direct {v3, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@1b
    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 55
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    #@2
    .line 54
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    instance-of v2, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 62
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    const-string/jumbo v3, "Only RSAKeyGenParameterSpec supported"

    #@9
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    :cond_0
    move-object v1, p1

    #@e
    .line 65
    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    #@10
    .line 67
    .local v1, "spec":Ljava/security/spec/RSAKeyGenParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    #@13
    move-result-object v0

    #@14
    .line 68
    .local v0, "publicExponent":Ljava/math/BigInteger;
    if-eqz v0, :cond_1

    #@16
    .line 69
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    #@1c
    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    #@1f
    move-result v2

    #@20
    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    #@22
    .line 60
    return-void
.end method
