.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;
.super Ljava/lang/Object;
.source "CustomPkcs1Encoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist HEADER_LENGTH:I = 0xa


# instance fields
.field private blacklist blockBuffer:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist forEncryption:Z

.field private blacklist forPrivateKey:Z

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist useStrictLength:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 40
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrictLength:Z

    .line 41
    return-void
.end method

.method private static blacklist checkPkcs1Encoding1([B)I
    .registers 9
    .param p0, "buf"    # [B

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "foundZeroMask":I
    const/4 v1, 0x0

    .line 180
    .local v1, "lastPadPos":I
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    .line 183
    .local v2, "badPadSign":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_2a

    .line 185
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 186
    .local v4, "padByte":I
    xor-int/lit8 v5, v4, 0x0

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 187
    .local v5, "is0x00Mask":I
    xor-int/lit16 v6, v4, 0xff

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    .line 188
    .local v6, "is0xFFMask":I
    not-int v7, v0

    and-int/2addr v7, v3

    and-int/2addr v7, v5

    xor-int/2addr v1, v7

    .line 189
    or-int/2addr v0, v5

    .line 190
    or-int v7, v0, v6

    not-int v7, v7

    or-int/2addr v2, v7

    .line 183
    .end local v4    # "padByte":I
    .end local v5    # "is0x00Mask":I
    .end local v6    # "is0xFFMask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 194
    .end local v3    # "i":I
    :cond_2a
    add-int/lit8 v3, v1, -0x9

    or-int/2addr v2, v3

    .line 196
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 197
    .local v3, "plaintextLength":I
    shr-int/lit8 v4, v2, 0x1f

    or-int/2addr v4, v3

    return v4
.end method

.method private static blacklist checkPkcs1Encoding2([B)I
    .registers 8
    .param p0, "buf"    # [B

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "foundZeroMask":I
    const/4 v1, 0x0

    .line 209
    .local v1, "lastPadPos":I
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    .line 212
    .local v2, "badPadSign":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_20

    .line 214
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 215
    .local v4, "padByte":I
    xor-int/lit8 v5, v4, 0x0

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 216
    .local v5, "is0x00Mask":I
    not-int v6, v0

    and-int/2addr v6, v3

    and-int/2addr v6, v5

    xor-int/2addr v1, v6

    .line 217
    or-int/2addr v0, v5

    .line 212
    .end local v4    # "padByte":I
    .end local v5    # "is0x00Mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 221
    .end local v3    # "i":I
    :cond_20
    add-int/lit8 v3, v1, -0x9

    or-int/2addr v2, v3

    .line 223
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 224
    .local v3, "plaintextLength":I
    shr-int/lit8 v4, v2, 0x1f

    or-int/2addr v4, v3

    return v4
.end method

.method private blacklist decodeBlock([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 234
    .local v0, "strictBlockSize":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 236
    .local v1, "block":[B
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->useStrictLength:Z

    array-length v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v0, :cond_15

    move v3, v4

    goto :goto_16

    :cond_15
    move v3, v5

    :goto_16
    and-int/2addr v2, v3

    .line 238
    .local v2, "incorrectLength":Z
    move-object v3, v1

    .line 239
    .local v3, "data":[B
    array-length v6, v1

    if-ge v6, v0, :cond_1d

    .line 241
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    .line 244
    :cond_1d
    iget-boolean v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    if-eqz v6, :cond_26

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->checkPkcs1Encoding2([B)I

    move-result v6

    goto :goto_2a

    :cond_26
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->checkPkcs1Encoding1([B)I

    move-result v6

    .line 248
    .local v6, "plaintextLength":I
    :goto_2a
    if-gez v6, :cond_2d

    goto :goto_2e

    :cond_2d
    move v4, v5

    :goto_2e
    or-int/2addr v4, v2

    if-eqz v4, :cond_45

    .line 251
    nop

    .line 260
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 261
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length v7, v7

    array-length v8, v1

    sub-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v5, v7, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 251
    const/4 v4, 0x0

    return-object v4

    .line 254
    :cond_45
    :try_start_45
    new-array v4, v6, [B

    .line 255
    .local v4, "result":[B
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5f

    .line 256
    nop

    .line 260
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 261
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length v8, v8

    array-length v9, v1

    sub-int/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v5, v8, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 256
    return-object v4

    .line 260
    .end local v4    # "result":[B
    :catchall_5f
    move-exception v4

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 261
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    array-length v8, v8

    array-length v9, v1

    sub-int/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v5, v8, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 262
    throw v4
.end method

.method private blacklist encodeBlock([BII)[B
    .registers 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_54

    .line 135
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 137
    .local v0, "block":[B
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    .line 139
    aput-byte v3, v0, v2

    .line 141
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_22

    .line 143
    const/4 v4, -0x1

    aput-byte v4, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v1    # "i":I
    :cond_22
    goto :goto_42

    .line 148
    :cond_23
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 150
    const/4 v1, 0x2

    aput-byte v1, v0, v2

    .line 156
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2c
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_42

    .line 158
    :goto_31
    aget-byte v4, v0, v1

    if-nez v4, :cond_3f

    .line 160
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_31

    .line 156
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 165
    .end local v1    # "i":I
    :cond_42
    :goto_42
    array-length v1, v0

    sub-int/2addr v1, p3

    sub-int/2addr v1, v3

    aput-byte v2, v0, v1

    .line 166
    array-length v1, v0

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1

    .line 132
    .end local v0    # "block":[B
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist useStrict()Z
    .registers 4

    .line 48
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 50
    return v2

    .line 53
    :cond_b
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.strict"

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 92
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_d

    .line 94
    add-int/lit8 v1, v0, -0xa

    return v1

    .line 98
    :cond_d
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 106
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 108
    return v0

    .line 112
    :cond_b
    add-int/lit8 v1, v0, -0xa

    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 65
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_15

    .line 67
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 69
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 71
    .local v0, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_26

    .line 74
    .end local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_15
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 75
    .restart local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_26

    if-eqz p1, :cond_26

    .line 77
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 81
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forPrivateKey:Z

    .line 84
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    .line 85
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->blockBuffer:[B

    .line 86
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 124
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CustomPKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
