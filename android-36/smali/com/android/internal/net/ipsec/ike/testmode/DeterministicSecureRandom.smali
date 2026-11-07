.class public Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;
.super Ljava/security/SecureRandom;
.source "DeterministicSecureRandom.java"

# interfaces
.implements Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;


# static fields
.field private static final blacklist INITIAL_BYTE_TO_SIGN_HEX:Ljava/lang/String; = "2514A9C2B797BDDC50A1975A00866C3CC87190C29DCEBB228A4D8730AF8881BC"

.field private static final blacklist MAC_SHA256_KEY_HEX:Ljava/lang/String; = "5D00F680E84F96374FC1BF8A4FC5F711467CBC62DF81A3B6169812531DF13E6C"

.field private static final blacklist MAC_SHA256_NAME:Ljava/lang/String; = "HmacSHA256"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mByteSignerMac:Ljavax/crypto/Mac;

.field private blacklist mBytesToSign:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 59
    const-string v0, "HmacSHA256"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 62
    :try_start_6
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mByteSignerMac:Ljavax/crypto/Mac;

    .line 63
    const-string v1, "5D00F680E84F96374FC1BF8A4FC5F711467CBC62DF81A3B6169812531DF13E6C"

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 64
    .local v1, "byteSignerKey":[B
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mByteSignerMac:Ljavax/crypto/Mac;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_1c} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_1c} :catch_26

    .line 68
    .end local v1    # "byteSignerKey":[B
    nop

    .line 70
    const-string v0, "2514A9C2B797BDDC50A1975A00866C3CC87190C29DCEBB228A4D8730AF8881BC"

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mBytesToSign:[B

    .line 71
    return-void

    .line 65
    :catch_26
    move-exception v0

    .line 67
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to construct DeterministicSecureRandom"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist generateBytes(I)[B
    .registers 4
    .param p1, "numBytes"    # I

    .line 80
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mBytesToSign:[B

    .line 81
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/net/crypto/KeyGenerationUtils;->prfPlus(Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;[B[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mBytesToSign:[B

    .line 83
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mBytesToSign:[B

    return-object v0
.end method


# virtual methods
.method public whitelist test-api generateSeed(I)[B
    .registers 3
    .param p1, "numBytes"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->generateBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 93
    sget-object v0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api nextBytes([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 100
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->generateBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 103
    return-void
.end method

.method public whitelist test-api setSeed(J)V
    .registers 3
    .param p1, "seed"    # J

    .line 113
    return-void
.end method

.method public whitelist test-api setSeed([B)V
    .registers 2
    .param p1, "seed"    # [B

    .line 108
    return-void
.end method

.method public blacklist signBytes([B[B)[B
    .registers 4
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B

    .line 75
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mByteSignerMac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/testmode/DeterministicSecureRandom;->mByteSignerMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method
