.class public Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLX25519PrivateKey.java"

# interfaces
.implements Lcom/android/org/conscrypt/OpenSSLX25519Key;
.implements Ljava/security/PrivateKey;


# static fields
.field private static final blacklist PKCS8_PREAMBLE:[B

.field private static final whitelist serialVersionUID:J = -0x2b8606a5ecc54524L


# instance fields
.field private blacklist uCoordinate:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/security/spec/EncodedKeySpec;)V
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/EncodedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    .line 46
    .local v0, "encoded":[B
    const-string v1, "PKCS#8"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 48
    :try_start_13
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_raw_X25519_private_key([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B
    :try_end_19
    .catch Ljava/security/InvalidKeyException; {:try_start_13 .. :try_end_19} :catch_1a
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_13 .. :try_end_19} :catch_1a

    .line 51
    goto :goto_2f

    .line 49
    :catch_1a
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    const-string v1, "raw"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 53
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    .line 57
    :goto_2f
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    array-length v1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_37

    .line 60
    return-void

    .line 58
    :cond_37
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Invalid key size"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_3f
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Encoding must be in PKCS#8 or raw format"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "coordinateBytes"    # [B

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    .line 66
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    .line 67
    return-void

    .line 64
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid key size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    .line 101
    :cond_d
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 110
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 111
    :cond_4
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    .line 113
    .local v0, "that":Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "XDH"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz v0, :cond_d

    .line 84
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->PKCS8_PREAMBLE:[B

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    return-object v0

    .line 82
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public blacklist getU()[B
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-eqz v0, :cond_d

    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 90
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isDestroyed()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->uCoordinate:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
