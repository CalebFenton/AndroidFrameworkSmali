.class public abstract Lcom/android/org/conscrypt/KeyGeneratorImpl;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/KeyGeneratorImpl$ARC4;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$ChaCha20;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$AES;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$DESEDE;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA512;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA384;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA256;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA224;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacSHA1;,
        Lcom/android/org/conscrypt/KeyGeneratorImpl$HmacMD5;
    }
.end annotation


# instance fields
.field private final blacklist algorithm:Ljava/lang/String;

.field private blacklist keySizeBits:I

.field protected blacklist secureRandom:Ljava/security/SecureRandom;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "defaultKeySizeBits"    # I

    .line 39
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->algorithm:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected blacklist checkKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I

    .line 45
    if-lez p1, :cond_3

    .line 48
    return-void

    .line 46
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist doKeyGeneration(I)[B
    .registers 4
    .param p1, "keyBytes"    # I

    .line 74
    new-array v0, p1, [B

    .line 75
    .local v0, "keyData":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 76
    return-object v0
.end method

.method protected whitelist test-api engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 85
    :cond_b
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;->doKeyGeneration(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 3
    .param p1, "keySize"    # I
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;->checkKeySize(I)V

    .line 69
    iput p1, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    .line 70
    iput-object p2, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 71
    return-void
.end method

.method protected whitelist test-api engineInit(Ljava/security/SecureRandom;)V
    .registers 2
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 52
    iput-object p1, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 53
    return-void
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 58
    if-nez p1, :cond_a

    .line 59
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No params provided"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
