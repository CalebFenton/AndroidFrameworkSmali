.class public final Lcom/android/org/conscrypt/Hkdf;
.super Ljava/lang/Object;
.source "Hkdf.java"


# instance fields
.field private final blacklist hmacName:Ljava/lang/String;

.field private final blacklist macLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "hmacName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/android/org/conscrypt/Hkdf;->hmacName:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/Hkdf;->macLength:I

    .line 54
    return-void
.end method

.method private blacklist getMac([B)Ljavax/crypto/Mac;
    .registers 5
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/org/conscrypt/Hkdf;->hmacName:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 123
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "RAW"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 124
    return-object v0
.end method


# virtual methods
.method public blacklist expand([B[BI)[B
    .registers 13
    .param p1, "prk"    # [B
    .param p2, "info"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    const-string v3, "Negative length"

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/org/conscrypt/Hkdf;->getMacLength()I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    if-ge p3, v2, :cond_1c

    move v2, v0

    goto :goto_1d

    :cond_1c
    move v2, v1

    :goto_1d
    const-string v3, "Length too long"

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/Hkdf;->getMac([B)Ljavax/crypto/Mac;

    move-result-object v2

    .line 101
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/Hkdf;->getMacLength()I

    move-result v3

    .line 103
    .local v3, "macLength":I
    new-array v4, v1, [B

    .line 104
    .local v4, "t":[B
    new-array v5, p3, [B

    .line 105
    .local v5, "output":[B
    const/4 v6, 0x0

    .line 106
    .local v6, "outputOffset":I
    new-array v7, v0, [B

    aput-byte v1, v7, v1

    .line 107
    .local v7, "counter":[B
    :goto_33
    if-ge v6, p3, :cond_50

    .line 108
    aget-byte v8, v7, v1

    add-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 109
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 110
    invoke-virtual {v2, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 111
    invoke-virtual {v2, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 112
    sub-int v8, p3, v6

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 113
    .local v8, "size":I
    invoke-static {v4, v1, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/2addr v6, v8

    .line 115
    .end local v8    # "size":I
    goto :goto_33

    .line 116
    :cond_50
    return-object v5
.end method

.method public blacklist extract([B[B)[B
    .registers 5
    .param p1, "salt"    # [B
    .param p2, "ikm"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    array-length v0, p2

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Empty keying material"

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 76
    array-length v0, p1

    if-nez v0, :cond_1a

    .line 77
    invoke-virtual {p0}, Lcom/android/org/conscrypt/Hkdf;->getMacLength()I

    move-result v0

    new-array p1, v0, [B

    .line 79
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/Hkdf;->getMac([B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMacLength()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/org/conscrypt/Hkdf;->macLength:I

    return v0
.end method
