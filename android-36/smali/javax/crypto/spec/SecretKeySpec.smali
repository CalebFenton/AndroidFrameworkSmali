.class public Ljavax/crypto/spec/SecretKeySpec;
.super Ljava/lang/Object;
.source "SecretKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final whitelist serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o key:[B


# direct methods
.method public constructor whitelist test-api <init>([BIILjava/lang/String;)V
    .registers 7
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "algorithm"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-eqz p1, :cond_35

    if-eqz p4, :cond_35

    .line 144
    array-length v0, p1

    if-eqz v0, :cond_2d

    .line 147
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_25

    .line 151
    if-ltz p3, :cond_1d

    .line 154
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 155
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput-object p4, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 157
    return-void

    .line 152
    :cond_1d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offset/length combination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BLjava/lang/String;)V
    .registers 5
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 95
    array-length v0, p1

    if-eqz v0, :cond_15

    .line 98
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 99
    iput-object p2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 100
    return-void

    .line 96
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 215
    if-ne p0, p1, :cond_4

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_4
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 219
    return v1

    .line 221
    :cond_a
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "thatAlg":Ljava/lang/String;
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 223
    const-string v2, "DESede"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "TripleDES"

    if-eqz v3, :cond_2b

    iget-object v3, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_2b
    nop

    .line 225
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 226
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 227
    :cond_3a
    return v1

    .line 230
    :cond_3b
    move-object v1, p1

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 232
    .local v1, "thatKey":[B
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-static {v2, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v2

    return v2
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 184
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 174
    const-string v0, "RAW"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "retval":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 194
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    .end local v1    # "i":I
    :cond_10
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    const-string v2, "TripleDES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 197
    const-string v1, "desede"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    move v0, v1

    return v1

    .line 199
    :cond_23
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    move v0, v1

    .line 199
    return v1
.end method
