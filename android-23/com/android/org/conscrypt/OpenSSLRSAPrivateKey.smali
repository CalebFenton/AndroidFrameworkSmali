.class public Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x439d6d0855187c6fL


# instance fields
.field protected transient fetchedParams:Z

.field protected transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field protected modulus:Ljava/math/BigInteger;

.field protected privateExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@5
    .line 43
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@3
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    #@6
    .line 50
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z

    #@9
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .locals 1
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@7
    .line 58
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 12
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getFormat()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 132
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 135
    :cond_0
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@e
    move-result-object v9

    #@f
    .line 136
    .local v9, "modulus":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v10

    #@13
    .line 138
    .local v10, "privateExponent":Ljava/math/BigInteger;
    if-nez v9, :cond_1

    #@15
    .line 139
    new-instance v0, Ljava/security/InvalidKeyException;

    #@17
    const-string/jumbo v1, "modulus == null"

    #@1a
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 140
    :cond_1
    if-nez v10, :cond_2

    #@20
    .line 141
    new-instance v0, Ljava/security/InvalidKeyException;

    #@22
    const-string/jumbo v1, "privateExponent == null"

    #@25
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 145
    :cond_2
    :try_start_0
    new-instance v11, Lcom/android/org/conscrypt/OpenSSLKey;

    #@2b
    .line 146
    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    #@2e
    move-result-object v0

    #@2f
    .line 148
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    #@32
    move-result-object v2

    #@33
    .line 147
    const/4 v1, 0x0

    #@34
    .line 149
    const/4 v3, 0x0

    #@35
    .line 150
    const/4 v4, 0x0

    #@36
    .line 151
    const/4 v5, 0x0

    #@37
    .line 152
    const/4 v6, 0x0

    #@38
    .line 153
    const/4 v7, 0x0

    #@39
    .line 145
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@3c
    move-result-wide v0

    #@3d
    invoke-direct {v11, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    return-object v11

    #@41
    .line 154
    :catch_0
    move-exception v8

    #@42
    .line 155
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    #@44
    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@47
    throw v0
.end method

.method static getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    .locals 2
    .param p0, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    #@7
    move-result-object v0

    #@8
    .line 89
    .local v0, "params":[[B
    const/4 v1, 0x1

    #@9
    aget-object v1, v0, v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 90
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;

    #@f
    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    #@12
    return-object v1

    #@13
    .line 92
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@15
    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    #@18
    return-object v1
.end method

.method private static init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 12
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    #@3
    move-result-object v9

    #@4
    .line 64
    .local v9, "modulus":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    #@7
    move-result-object v10

    #@8
    .line 66
    .local v10, "privateExponent":Ljava/math/BigInteger;
    if-nez v9, :cond_0

    #@a
    .line 67
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@c
    const-string/jumbo v1, "modulus == null"

    #@f
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 68
    :cond_0
    if-nez v10, :cond_1

    #@15
    .line 69
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@17
    const-string/jumbo v1, "privateExponent == null"

    #@1a
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 73
    :cond_1
    :try_start_0
    new-instance v11, Lcom/android/org/conscrypt/OpenSSLKey;

    #@20
    .line 74
    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    #@23
    move-result-object v0

    #@24
    .line 76
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    #@27
    move-result-object v2

    #@28
    .line 75
    const/4 v1, 0x0

    #@29
    .line 77
    const/4 v3, 0x0

    #@2a
    .line 78
    const/4 v4, 0x0

    #@2b
    .line 79
    const/4 v5, 0x0

    #@2c
    .line 80
    const/4 v6, 0x0

    #@2d
    .line 81
    const/4 v7, 0x0

    #@2e
    .line 73
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@31
    move-result-wide v0

    #@32
    invoke-direct {v11, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    return-object v11

    #@36
    .line 82
    :catch_0
    move-exception v8

    #@37
    .line 83
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@39
    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 292
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 294
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    #@6
    .line 295
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@8
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    .line 297
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@11
    move-result-object v2

    #@12
    move-object v3, v1

    #@13
    move-object v4, v1

    #@14
    move-object v5, v1

    #@15
    move-object v6, v1

    #@16
    move-object v7, v1

    #@17
    .line 294
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@1e
    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@20
    .line 303
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z

    #@23
    .line 291
    return-void
.end method

.method static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 5
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    .line 113
    .local v0, "modulus":Ljava/math/BigInteger;
    instance-of v1, p0, Ljava/security/interfaces/RSAKey;

    #@3
    if-eqz v1, :cond_1

    #@5
    move-object v1, p0

    #@6
    .line 114
    check-cast v1, Ljava/security/interfaces/RSAKey;

    #@8
    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    .line 118
    .end local v0    # "modulus":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@e
    .line 119
    new-instance v1, Ljava/security/InvalidKeyException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "RSA modulus not available. Private: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 120
    const-string/jumbo v3, ", public: "

    #@23
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 115
    .restart local v0    # "modulus":Ljava/math/BigInteger;
    :cond_1
    instance-of v1, p1, Ljava/security/interfaces/RSAKey;

    #@35
    if-eqz v1, :cond_0

    #@37
    move-object v1, p1

    #@38
    .line 116
    check-cast v1, Ljava/security/interfaces/RSAKey;

    #@3a
    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    #@3d
    move-result-object v0

    #@3e
    .local v0, "modulus":Ljava/math/BigInteger;
    goto :goto_0

    #@3f
    .line 122
    .end local v0    # "modulus":Ljava/math/BigInteger;
    :cond_2
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@41
    .line 123
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@44
    move-result-object v2

    #@45
    invoke-static {p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J

    #@48
    move-result-wide v2

    #@49
    const/4 v4, 0x1

    #@4a
    .line 122
    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    #@4d
    return-object v1
.end method

.method protected static wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 5
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    .line 98
    .local v0, "wrapper":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_0

    #@6
    .line 99
    return-object v0

    #@7
    .line 101
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@10
    move-result-object v2

    #@11
    invoke-static {p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J

    #@14
    move-result-wide v2

    #@15
    .line 102
    const/4 v4, 0x1

    #@16
    .line 101
    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    #@19
    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 308
    new-instance v0, Ljava/io/NotSerializableException;

    #@c
    const-string/jumbo v1, "engine-based keys can not be serialized"

    #@f
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    #@16
    .line 312
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@19
    .line 306
    return-void
.end method


# virtual methods
.method final declared-synchronized ensureReadParams()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 161
    return-void

    #@7
    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    #@14
    .line 164
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 159
    return-void

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 233
    if-ne p1, p0, :cond_0

    #@3
    .line 234
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 237
    :cond_0
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@7
    if-eqz v3, :cond_1

    #@9
    move-object v0, p1

    #@a
    .line 238
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@c
    .line 239
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@e
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 242
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_1
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 243
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    #@1e
    move-object v1, p1

    #@1f
    .line 244
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    #@21
    .line 246
    .local v1, "other":Ljava/security/interfaces/RSAPrivateKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@23
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 247
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@2f
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    .line 246
    :cond_2
    return v2

    #@38
    .line 250
    .end local v1    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_3
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 228
    const-string/jumbo v0, "RSA"

    #@3
    return-object v0
.end method

.method public final getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 206
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 220
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 223
    :cond_0
    const-string/jumbo v0, "PKCS#8"

    #@d
    return-object v0
.end method

.method public final getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    #@3
    .line 195
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    return-object v0
.end method

.method public final getPrivateExponent()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v1, "private exponent cannot be extracted"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    #@14
    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@16
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    #@3
    .line 258
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@5
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v0, v1, 0x3

    #@b
    .line 259
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 260
    mul-int/lit8 v1, v0, 0x7

    #@11
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@13
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    #@16
    move-result v2

    #@17
    add-int v0, v1, v2

    #@19
    .line 263
    :cond_0
    return v0
.end method

.method readParams([[B)V
    .locals 3
    .param p1, "params"    # [[B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x2

    #@2
    .line 168
    aget-object v0, p1, v1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "modulus == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 170
    :cond_0
    aget-object v0, p1, v2

    #@11
    if-nez v0, :cond_1

    #@13
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@15
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 174
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    #@1d
    aget-object v1, p1, v1

    #@1f
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@22
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@24
    .line 177
    aget-object v0, p1, v2

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 178
    new-instance v0, Ljava/math/BigInteger;

    #@2a
    aget-object v1, p1, v2

    #@2c
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@2f
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@31
    .line 167
    :cond_2
    return-void

    #@32
    .line 171
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    #@34
    const-string/jumbo v1, "privateExponent == null"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    const/16 v3, 0x10

    #@4
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    const-string/jumbo v2, "OpenSSLRSAPrivateKey{"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    .line 270
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@e
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@11
    move-result v0

    #@12
    .line 271
    .local v0, "engineBased":Z
    if-eqz v0, :cond_0

    #@14
    .line 272
    const-string/jumbo v2, "key="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 273
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    .line 274
    const/16 v2, 0x7d

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    #@27
    .line 278
    const-string/jumbo v2, "modulus="

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 279
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@2f
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 280
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 282
    if-nez v0, :cond_1

    #@3b
    .line 283
    const-string/jumbo v2, "privateExponent="

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 284
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@43
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 285
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 288
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    return-object v2
.end method
