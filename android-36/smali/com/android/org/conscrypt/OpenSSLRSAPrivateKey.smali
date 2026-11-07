.class Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final whitelist serialVersionUID:J = 0x439d6d0855187c6fL


# instance fields
.field transient blacklist fetchedParams:Z

.field transient blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;

.field blacklist modulus:Ljava/math/BigInteger;

.field blacklist privateExponent:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 2
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 50
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .registers 4
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    .line 53
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .registers 3
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 65
    return-void
.end method

.method static blacklist getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 12
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 131
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 132
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 135
    :cond_b
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 136
    .local v1, "modulus":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 138
    .local v2, "privateExponent":Ljava/math/BigInteger;
    if-eqz v1, :cond_3e

    .line 140
    if-eqz v2, :cond_36

    .line 145
    :try_start_17
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 146
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 148
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 145
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2e} :catch_2f

    return-object v0

    .line 154
    :catch_2f
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v3, "privateExponent == null"

    invoke-direct {v0, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3e
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v3, "modulus == null"

    invoke-direct {v0, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    .registers 3
    .param p0, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 93
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    move-result-object v0

    .line 94
    .local v0, "params":[[B
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_13

    .line 95
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    return-object v1

    .line 97
    :cond_13
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    return-object v1
.end method

.method private static blacklist init(Ljava/security/spec/RSAPrivateKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 12
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 69
    .local v1, "modulus":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 71
    .local v2, "privateExponent":Ljava/math/BigInteger;
    if-eqz v1, :cond_33

    .line 73
    if-eqz v2, :cond_2b

    .line 78
    :try_start_c
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 79
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 81
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 78
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_24

    return-object v0

    .line 87
    :catch_24
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "privateExponent == null"

    invoke-direct {v0, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_33
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "modulus == null"

    invoke-direct {v0, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 267
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 268
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 270
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 267
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z

    .line 277
    return-void
.end method

.method static blacklist wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 7
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "modulus":Ljava/math/BigInteger;
    instance-of v1, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_d

    .line 114
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_18

    .line 115
    :cond_d
    instance-of v1, p1, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_18

    .line 116
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 118
    :cond_18
    :goto_18
    if-eqz v0, :cond_29

    .line 122
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 123
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    .line 122
    return-object v1

    .line 119
    :cond_29
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA modulus not available. Private: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", public: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 5
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;

    .line 101
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 102
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 101
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 283
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 284
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 285
    return-void

    .line 281
    :cond_f
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Hardware backed keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final declared-synchronized blacklist ensureReadParams()V
    .registers 2

    monitor-enter p0

    .line 160
    :try_start_1
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-eqz v0, :cond_7

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->fetchedParams:Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    .line 165
    monitor-exit p0

    return-void

    .line 159
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 221
    return v0

    .line 224
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v1, :cond_16

    .line 225
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 226
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 229
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_16
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 230
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 231
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 233
    .local v1, "other":Ljava/security/interfaces/RSAPrivateKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 234
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 233
    :goto_3b
    return v0

    .line 237
    .end local v1    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_3c
    return v2
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 215
    const-string v0, "RSA"

    return-object v0
.end method

.method public final whitelist test-api getEncoded()[B
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_a
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_a
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public final whitelist test-api getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 193
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 194
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public final whitelist test-api getPrivateExponent()Ljava/math/BigInteger;
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 187
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 188
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0

    .line 185
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Private exponent cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 242
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 243
    const/4 v0, 0x1

    .line 245
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 246
    .end local v0    # "hash":I
    .local v1, "hash":I
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    if-eqz v0, :cond_1b

    .line 247
    mul-int/lit8 v0, v1, 0x7

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int v1, v0, v2

    .line 250
    :cond_1b
    return v1
.end method

.method blacklist readParams([[B)V
    .registers 5
    .param p1, "params"    # [[B

    .line 168
    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_32

    .line 170
    const/4 v1, 0x2

    aget-object v2, p1, v1

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1b

    .line 171
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "privateExponent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1b
    :goto_1b
    new-instance v2, Ljava/math/BigInteger;

    aget-object v0, p1, v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 177
    aget-object v0, p1, v1

    if-eqz v0, :cond_31

    .line 178
    new-instance v0, Ljava/math/BigInteger;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 180
    :cond_31
    return-void

    .line 169
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "modulus == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLRSAPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->ensureReadParams()V

    .line 258
    const-string v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
