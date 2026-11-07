.class public Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
.super Ljava/lang/Object;
.source "OpenSSLX25519PublicKey.java"

# interfaces
.implements Lcom/android/org/conscrypt/OpenSSLX25519Key;
.implements Ljava/security/PublicKey;


# static fields
.field private static final blacklist X509_PREAMBLE:[B

.field private static final whitelist serialVersionUID:J = 0x64c7113d078e42dL


# instance fields
.field private final blacklist uCoordinate:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/security/spec/EncodedKeySpec;)V
    .registers 7
    .param p1, "keySpec"    # Ljava/security/spec/EncodedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    .line 43
    .local v0, "encoded":[B
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Invalid key size"

    const/16 v3, 0x20

    if-eqz v1, :cond_3e

    .line 44
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 47
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    array-length v1, v1

    add-int/2addr v1, v3

    .line 48
    .local v1, "totalLength":I
    array-length v3, v0

    if-lt v3, v1, :cond_30

    .line 51
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    array-length v2, v2

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    .line 52
    .end local v1    # "totalLength":I
    goto :goto_4f

    .line 49
    .restart local v1    # "totalLength":I
    :cond_30
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    .end local v1    # "totalLength":I
    :cond_36
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Invalid format"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_3e
    const-string v1, "raw"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 53
    array-length v1, v0

    if-ne v1, v3, :cond_50

    .line 56
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    .line 60
    :goto_4f
    return-void

    .line 54
    :cond_50
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_56
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Encoding must be in X.509 or raw format"

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

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

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
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz v0, :cond_1a

    .line 102
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    return v0

    .line 103
    :cond_8
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 104
    :cond_e
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    .line 105
    .local v0, "that":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 99
    .end local v0    # "that":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz v0, :cond_d

    .line 85
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->X509_PREAMBLE:[B

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

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
    const-string v0, "X.509"

    return-object v0
.end method

.method public blacklist getU()[B
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 91
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->uCoordinate:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0

    .line 111
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
