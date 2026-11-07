.class public Landroid/security/identity/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Util"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist computeHkdf(Ljava/lang/String;[B[B[BI)[B
    .registers 13
    .param p0, "macAlgorithm"    # Ljava/lang/String;
    .param p1, "ikm"    # [B
    .param p2, "salt"    # [B
    .param p3, "info"    # [B
    .param p4, "size"    # I

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "mac":Ljavax/crypto/Mac;
    :try_start_1
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_5} :catch_73

    .line 130
    .end local v0    # "mac":Ljavax/crypto/Mac;
    .local v1, "mac":Ljavax/crypto/Mac;
    nop

    .line 131
    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    if-gt p4, v0, :cond_6a

    .line 135
    if-eqz p2, :cond_1d

    :try_start_10
    array-length v0, p2

    if-nez v0, :cond_14

    goto :goto_1d

    .line 141
    :cond_14
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_2b

    .line 139
    :cond_1d
    :goto_1d
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v0, v2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 143
    :goto_2b
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 144
    .local v0, "prk":[B
    new-array v2, p4, [B

    .line 145
    .local v2, "result":[B
    const/4 v3, 0x1

    .line 146
    .local v3, "ctr":I
    const/4 v4, 0x0

    .line 147
    .local v4, "pos":I
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v0, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 148
    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 150
    .local v6, "digest":[B
    :goto_3e
    invoke-virtual {v1, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 151
    invoke-virtual {v1, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 152
    int-to-byte v7, v3

    invoke-virtual {v1, v7}, Ljavax/crypto/Mac;->update(B)V

    .line 153
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v7

    move-object v6, v7

    .line 154
    array-length v7, v6

    add-int/2addr v7, v4

    if-ge v7, p4, :cond_5a

    .line 155
    array-length v7, v6

    invoke-static {v6, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    array-length v7, v6

    add-int/2addr v4, v7

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 159
    :cond_5a
    sub-int v7, p4, v4

    invoke-static {v6, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5f
    .catch Ljava/security/InvalidKeyException; {:try_start_10 .. :try_end_5f} :catch_61

    .line 160
    nop

    .line 163
    return-object v2

    .line 164
    .end local v0    # "prk":[B
    .end local v2    # "result":[B
    .end local v3    # "ctr":I
    .end local v4    # "pos":I
    .end local v6    # "digest":[B
    :catch_61
    move-exception v0

    .line 165
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error MACing"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 132
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_6a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "size too large"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    .end local v1    # "mac":Ljavax/crypto/Mac;
    .local v0, "mac":Ljavax/crypto/Mac;
    :catch_73
    move-exception v1

    .line 129
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist publicKeyEncodeUncompressedForm(Ljava/security/PublicKey;)[B
    .registers 11
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .line 54
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 55
    .local v0, "w":Ljava/security/spec/ECPoint;
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 56
    .local v1, "x":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 57
    .local v2, "y":Ljava/math/BigInteger;
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_b5

    .line 60
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_ad

    .line 64
    :try_start_1f
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 79
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Landroid/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v4

    .line 80
    .local v4, "xBytes":[B
    array-length v5, v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_31} :catch_a4

    const-string v6, " which is unexpected"

    const/16 v7, 0x20

    if-gt v5, v7, :cond_85

    .line 83
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_38
    :try_start_38
    array-length v8, v4

    rsub-int/lit8 v8, v8, 0x20

    const/4 v9, 0x0

    if-ge v5, v8, :cond_44

    .line 84
    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 86
    .end local v5    # "n":I
    :cond_44
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 88
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Landroid/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v5

    .line 89
    .local v5, "yBytes":[B
    array-length v8, v5

    if-gt v8, v7, :cond_66

    .line 92
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_53
    array-length v8, v5

    rsub-int/lit8 v8, v8, 0x20

    if-ge v6, v8, :cond_5e

    .line 93
    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 95
    .end local v6    # "n":I
    :cond_5e
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 96
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 90
    :cond_66
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "yBytes is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "w":Ljava/security/spec/ECPoint;
    .end local v1    # "x":Ljava/math/BigInteger;
    .end local v2    # "y":Ljava/math/BigInteger;
    .end local p0    # "publicKey":Ljava/security/PublicKey;
    throw v7

    .line 81
    .end local v5    # "yBytes":[B
    .restart local v0    # "w":Ljava/security/spec/ECPoint;
    .restart local v1    # "x":Ljava/math/BigInteger;
    .restart local v2    # "y":Ljava/math/BigInteger;
    .restart local p0    # "publicKey":Ljava/security/PublicKey;
    :cond_85
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xBytes is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "w":Ljava/security/spec/ECPoint;
    .end local v1    # "x":Ljava/math/BigInteger;
    .end local v2    # "y":Ljava/math/BigInteger;
    .end local p0    # "publicKey":Ljava/security/PublicKey;
    throw v5
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_a4} :catch_a4

    .line 97
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "xBytes":[B
    .restart local v0    # "w":Ljava/security/spec/ECPoint;
    .restart local v1    # "x":Ljava/math/BigInteger;
    .restart local v2    # "y":Ljava/math/BigInteger;
    .restart local p0    # "publicKey":Ljava/security/PublicKey;
    :catch_a4
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected IOException"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 61
    .end local v3    # "e":Ljava/io/IOException;
    :cond_ad
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Y is negative"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_b5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "X is negative"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static blacklist stripLeadingZeroes([B)[B
    .registers 7
    .param p0, "value"    # [B

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "n":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_b

    aget-byte v1, p0, v0

    if-nez v1, :cond_b

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_b
    array-length v1, p0

    sub-int/2addr v1, v0

    .line 45
    .local v1, "newLen":I
    new-array v2, v1, [B

    .line 46
    .local v2, "ret":[B
    const/4 v3, 0x0

    .line 47
    .local v3, "m":I
    :goto_10
    array-length v4, p0

    if-ge v0, v4, :cond_1e

    .line 48
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .local v4, "m":I
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "n":I
    .local v5, "n":I
    aget-byte v0, p0, v0

    aput-byte v0, v2, v3

    move v3, v4

    move v0, v5

    goto :goto_10

    .line 50
    .end local v4    # "m":I
    .end local v5    # "n":I
    .restart local v0    # "n":I
    .restart local v3    # "m":I
    :cond_1e
    return-object v2
.end method
