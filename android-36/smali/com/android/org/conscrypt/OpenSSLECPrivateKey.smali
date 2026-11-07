.class final Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final blacklist ALGORITHM:Ljava/lang/String; = "EC"

.field private static final whitelist serialVersionUID:J = -0x380500de1e729812L


# instance fields
.field private transient blacklist group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field private transient blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 3
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 52
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 53
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 6
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 57
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 58
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 59
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .registers 7
    .param p1, "ecKeySpec"    # Ljava/security/spec/ECPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    :try_start_3
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 64
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    .line 65
    .local v0, "privKey":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 65
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_29

    .line 69
    .end local v0    # "privKey":Ljava/math/BigInteger;
    nop

    .line 70
    return-void

    .line 67
    :catch_29
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getInstance(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 7
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 137
    nop

    .line 138
    :try_start_1
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    .line 144
    .local v0, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    .line 145
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 148
    :cond_14
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    .line 149
    .local v1, "privKey":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v3

    .line 150
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 149
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    return-object v2

    .line 151
    .end local v0    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .end local v1    # "privKey":Ljava/math/BigInteger;
    :catch_2b
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getPrivateKey()Ljava/math/BigInteger;
    .registers 3

    .line 191
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 245
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 248
    .local v0, "encoded":[B
    :try_start_9
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_14
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_9 .. :try_end_14} :catch_2c

    .line 251
    nop

    .line 252
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 253
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 254
    return-void

    .line 249
    :catch_2c
    move-exception v1

    .line 250
    .local v1, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_d

    .line 91
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_18

    .line 92
    :cond_d
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_18

    .line 93
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 95
    :cond_18
    :goto_18
    if-eqz v0, :cond_1f

    .line 99
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 96
    :cond_1f
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EC parameters not available. Private: "

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

.method static blacklist wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 7
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 109
    if-nez p1, :cond_d

    .line 110
    instance-of v0, p0, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_d

    .line 111
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    .line 114
    :cond_d
    if-eqz p1, :cond_3d

    .line 120
    :try_start_f
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0
    :try_end_13
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f .. :try_end_13} :catch_23

    .line 123
    .local v0, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    nop

    .line 125
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 126
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    .line 125
    return-object v1

    .line 121
    .end local v0    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :catch_23
    move-exception v0

    .line 122
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid EC parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_3d
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EC parameters not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_8} :catch_e

    .line 78
    .local v0, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    nop

    .line 79
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 76
    .end local v0    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :catch_e
    move-exception v0

    .line 77
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unknown group parameters"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 132
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v1

    .line 131
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

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

    .line 257
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 261
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 262
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 263
    return-void

    .line 258
    :cond_13
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Hardware backed keys cannot be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 202
    return v0

    .line 205
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v1, :cond_14

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    .line 207
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 210
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    :cond_14
    instance-of v1, p1, Ljava/security/interfaces/ECPrivateKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 211
    return v2

    .line 214
    :cond_1a
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 215
    .local v1, "other":Ljava/security/interfaces/ECPrivateKey;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 216
    return v2

    .line 219
    :cond_2c
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 220
    .local v3, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 222
    .local v4, "otherSpec":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 223
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 224
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 225
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    if-ne v5, v6, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v2

    .line 222
    :goto_6a
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 158
    const-string v0, "EC"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_a
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_a
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public blacklist getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getS()Ljava/math/BigInteger;
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_d

    .line 187
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 185
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Private key value S cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLECPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "params={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_print_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
