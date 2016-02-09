.class public final Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
.super Ljava/lang/Object;
.source "OpenSSLECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final serialVersionUID:J = -0x380500de1e729812L


# instance fields
.field protected transient group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field protected transient key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@5
    .line 46
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 4
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@5
    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@7
    .line 51
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@a
    move-result-object v2

    #@b
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@e
    move-result-wide v2

    #@f
    .line 50
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    #@12
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #@15
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@17
    .line 52
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@19
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 6
    .param p1, "ecKeySpec"    # Ljava/security/spec/ECPrivateKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@d
    .line 58
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    #@10
    move-result-object v1

    #@11
    .line 59
    .local v1, "privKey":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #@13
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@15
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@18
    move-result-object v3

    #@19
    .line 60
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@1c
    move-result-object v4

    #@1d
    .line 59
    const/4 v5, 0x0

    #@1e
    invoke-static {v3, v5, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    #@21
    move-result-wide v4

    #@22
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@25
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 55
    return-void

    #@28
    .line 61
    .end local v1    # "privKey":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@29
    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@2b
    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v2
.end method

.method public static getInstance(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 7
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@7
    move-result-object v1

    #@8
    .line 138
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getFormat()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 139
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 142
    :cond_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@16
    move-result-object v2

    #@17
    .line 143
    .local v2, "privKey":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    #@19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@1c
    move-result-object v4

    #@1d
    .line 144
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@20
    move-result-object v5

    #@21
    .line 143
    const/4 v6, 0x0

    #@22
    invoke-static {v4, v6, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    #@25
    move-result-wide v4

    #@26
    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    return-object v3

    #@2a
    .line 145
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .end local v2    # "privKey":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@2b
    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@2d
    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw v3
.end method

.method private getPrivateKey()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 198
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@4
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@f
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 248
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 250
    .local v0, "encoded":[B
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@b
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    #@e
    move-result-wide v2

    #@f
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@12
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@14
    .line 251
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@16
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@18
    .line 252
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@1a
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@21
    move-result-wide v4

    #@22
    .line 251
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    #@25
    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #@28
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2a
    .line 245
    return-void
.end method

.method static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    .line 84
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    #@3
    if-eqz v1, :cond_1

    #@5
    move-object v1, p0

    #@6
    .line 85
    check-cast v1, Ljava/security/interfaces/ECKey;

    #@8
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@b
    move-result-object v0

    #@c
    .line 89
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@e
    .line 90
    new-instance v1, Ljava/security/InvalidKeyException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "EC parameters not available. Private: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 91
    const-string/jumbo v3, ", public: "

    #@23
    .line 90
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
    .line 86
    .restart local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_1
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    #@35
    if-eqz v1, :cond_0

    #@37
    move-object v1, p1

    #@38
    .line 87
    check-cast v1, Ljava/security/interfaces/ECKey;

    #@3a
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@3d
    move-result-object v0

    #@3e
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    goto :goto_0

    #@3f
    .line 93
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_2
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@42
    move-result-object v1

    #@43
    return-object v1
.end method

.method static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    if-nez p1, :cond_0

    #@2
    .line 104
    instance-of v2, p0, Ljava/security/interfaces/ECKey;

    #@4
    if-eqz v2, :cond_0

    #@6
    move-object v2, p0

    #@7
    .line 105
    check-cast v2, Ljava/security/interfaces/ECKey;

    #@9
    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@c
    move-result-object p1

    #@d
    .line 108
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 109
    new-instance v2, Ljava/security/InvalidKeyException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "EC parameters not available: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 114
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v1

    #@2d
    .line 119
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #@2f
    .line 120
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@32
    move-result-object v3

    #@33
    invoke-static {p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    #@36
    move-result-wide v4

    #@37
    const/4 v3, 0x1

    #@38
    .line 119
    invoke-direct {v2, v4, v5, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    #@3b
    return-object v2

    #@3c
    .line 115
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :catch_0
    move-exception v0

    #@3d
    .line 116
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Invalid EC parameters: "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@56
    throw v2
.end method

.method public static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    .line 73
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 70
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :catch_0
    move-exception v0

    #@e
    .line 71
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@10
    const-string/jumbo v3, "Unknown group parameters"

    #@13
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v2
.end method

.method private static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/conscrypt/OpenSSLECGroupContext;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "ecPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    .line 126
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@5
    move-result-object v1

    #@6
    .line 125
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    #@9
    move-result-wide v2

    #@a
    .line 126
    const/4 v1, 0x1

    #@b
    .line 125
    invoke-direct {v0, v2, v3, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    #@e
    return-object v0
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
    .line 256
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 257
    new-instance v0, Ljava/io/NotSerializableException;

    #@a
    const-string/jumbo v1, "engine-based keys can not be serialized"

    #@d
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@14
    .line 261
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getEncoded()[B

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1b
    .line 255
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 208
    if-ne p1, p0, :cond_0

    #@4
    .line 209
    return v4

    #@5
    .line 212
    :cond_0
    instance-of v6, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@7
    if-eqz v6, :cond_1

    #@9
    move-object v0, p1

    #@a
    .line 213
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@c
    .line 214
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@e
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@10
    invoke-virtual {v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    return v4

    #@15
    .line 217
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    :cond_1
    instance-of v6, p1, Ljava/security/interfaces/ECPrivateKey;

    #@17
    if-nez v6, :cond_2

    #@19
    .line 218
    return v5

    #@1a
    :cond_2
    move-object v1, p1

    #@1b
    .line 221
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    #@1d
    .line 222
    .local v1, "other":Ljava/security/interfaces/ECPrivateKey;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    #@20
    move-result-object v6

    #@21
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-nez v6, :cond_3

    #@2b
    .line 223
    return v5

    #@2c
    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@2f
    move-result-object v3

    #@30
    .line 227
    .local v3, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@33
    move-result-object v2

    #@34
    .line 229
    .local v2, "otherSpec":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v6, v7}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_5

    #@42
    .line 230
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v6, v7}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v6

    #@4e
    .line 229
    if-eqz v6, :cond_5

    #@50
    .line 231
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v6

    #@5c
    .line 229
    if-eqz v6, :cond_5

    #@5e
    .line 232
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@61
    move-result v6

    #@62
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@65
    move-result v7

    #@66
    if-ne v6, v7, :cond_4

    #@68
    .line 229
    :goto_0
    return v4

    #@69
    :cond_4
    move v4, v5

    #@6a
    .line 232
    goto :goto_0

    #@6b
    :cond_5
    move v4, v5

    #@6c
    .line 229
    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "EC"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 177
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

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

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 163
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 166
    :cond_0
    const-string/jumbo v0, "PKCS#8"

    #@d
    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v1, "private key value S cannot be extracted"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_print_private(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
