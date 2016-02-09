.class public final Lcom/android/org/conscrypt/OpenSSLECPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final serialVersionUID:J = 0x2ca0f81a89dc7224L


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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@5
    .line 42
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@7
    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 4
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@5
    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@7
    .line 47
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@a
    move-result-object v2

    #@b
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@e
    move-result-wide v2

    #@f
    .line 46
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    #@12
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #@15
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@17
    .line 48
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@19
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 6
    .param p1, "ecKeySpec"    # Ljava/security/spec/ECPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@d
    .line 55
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@f
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    #@16
    move-result v2

    #@17
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@19
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    #@1c
    move-result-object v4

    #@1d
    .line 54
    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getInstance(ILcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;

    #@20
    move-result-object v1

    #@21
    .line 56
    .local v1, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #@23
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@25
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@28
    move-result-object v3

    #@29
    .line 57
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@2c
    move-result-object v4

    #@2d
    const/4 v5, 0x0

    #@2e
    .line 56
    invoke-static {v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    #@31
    move-result-wide v4

    #@32
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@35
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 51
    return-void

    #@38
    .line 58
    .end local v1    # "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    :catch_0
    move-exception v0

    #@39
    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@3b
    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@3e
    throw v2
.end method

.method public static getInstance(Ljava/security/interfaces/ECPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 7
    .param p0, "ecPublicKey"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@3
    move-result-object v3

    #@4
    .line 65
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@7
    move-result-object v1

    #@8
    .line 68
    .local v1, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@b
    move-result-object v3

    #@c
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    #@f
    move-result v3

    #@10
    .line 69
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@13
    move-result-object v4

    #@14
    .line 67
    invoke-static {v3, v1, v4}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getInstance(ILcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;

    #@17
    move-result-object v2

    #@18
    .line 70
    .local v2, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    #@1a
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@1d
    move-result-object v4

    #@1e
    .line 71
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@21
    move-result-object v5

    #@22
    const/4 v6, 0x0

    #@23
    .line 70
    invoke-static {v4, v5, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    #@26
    move-result-wide v4

    #@27
    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    return-object v3

    #@2b
    .line 72
    .end local v1    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .end local v2    # "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    :catch_0
    move-exception v0

    #@2c
    .line 73
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@2e
    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@31
    throw v3
.end method

.method private getPublicKey()Ljava/security/spec/ECPoint;
    .locals 6

    #@0
    .prologue
    .line 98
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    #@2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@4
    .line 99
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@6
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@8
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@b
    move-result-object v3

    #@c
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@f
    move-result-wide v4

    #@10
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    #@13
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    #@16
    .line 101
    .local v0, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    #@19
    move-result-object v1

    #@1a
    return-object v1
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
    .line 154
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 156
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 158
    .local v0, "encoded":[B
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@b
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    #@e
    move-result-wide v2

    #@f
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@12
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@14
    .line 159
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@16
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@18
    .line 160
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@1a
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    #@21
    move-result-wide v4

    #@22
    .line 159
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    #@25
    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #@28
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2a
    .line 153
    return-void
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
    .line 164
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 165
    new-instance v0, Ljava/io/NotSerializableException;

    #@a
    const-string/jumbo v1, "engine-based keys can not be serialized"

    #@d
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@14
    .line 169
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getEncoded()[B

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1b
    .line 163
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
    .line 116
    if-ne p1, p0, :cond_0

    #@4
    .line 117
    return v4

    #@5
    .line 120
    :cond_0
    instance-of v6, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@7
    if-eqz v6, :cond_1

    #@9
    move-object v0, p1

    #@a
    .line 121
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@c
    .line 122
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@e
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@10
    invoke-virtual {v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    return v4

    #@15
    .line 125
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLECPrivateKey;
    :cond_1
    instance-of v6, p1, Ljava/security/interfaces/ECPublicKey;

    #@17
    if-nez v6, :cond_2

    #@19
    .line 126
    return v5

    #@1a
    :cond_2
    move-object v1, p1

    #@1b
    .line 129
    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    #@1d
    .line 130
    .local v1, "other":Ljava/security/interfaces/ECPublicKey;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    #@20
    move-result-object v6

    #@21
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v6, v7}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-nez v6, :cond_3

    #@2b
    .line 131
    return v5

    #@2c
    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@2f
    move-result-object v3

    #@30
    .line 135
    .local v3, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@33
    move-result-object v2

    #@34
    .line 137
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
    .line 138
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
    .line 137
    if-eqz v6, :cond_5

    #@50
    .line 139
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
    .line 137
    if-eqz v6, :cond_5

    #@5e
    .line 140
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
    .line 137
    :goto_0
    return v4

    #@69
    :cond_4
    move v4, v5

    #@6a
    .line 140
    goto :goto_0

    #@6b
    :cond_5
    move v4, v5

    #@6c
    .line 137
    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "EC"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

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
    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_print_public(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
