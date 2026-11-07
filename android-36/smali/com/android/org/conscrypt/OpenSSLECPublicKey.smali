.class final Lcom/android/org/conscrypt/OpenSSLECPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final blacklist ALGORITHM:Ljava/lang/String; = "EC"

.field private static final whitelist serialVersionUID:J = 0x2ca0f81a89dc7224L


# instance fields
.field private transient blacklist group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field private transient blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 3
    .param p1, "group"    # Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 48
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 49
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 6
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 53
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 54
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .registers 7
    .param p1, "ecKeySpec"    # Ljava/security/spec/ECPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    :try_start_3
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 61
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getInstance(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;

    move-result-object v0

    .line 62
    .local v0, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v2

    .line 63
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    move-result-object v3

    .line 62
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_2f

    .line 66
    .end local v0    # "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    nop

    .line 67
    return-void

    .line 64
    :catch_2f
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getInstance(Ljava/security/interfaces/ECPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 7
    .param p0, "ecPublicKey"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 71
    nop

    .line 72
    :try_start_1
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    .line 73
    .local v0, "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    nop

    .line 74
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getInstance(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;

    move-result-object v1

    .line 75
    .local v1, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v3

    .line 76
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    move-result-object v4

    .line 75
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    return-object v2

    .line 77
    .end local v0    # "group":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .end local v1    # "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    :catch_25
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getPublicKey()Ljava/security/spec/ECPoint;
    .registers 6

    .line 103
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 104
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    .line 106
    .local v0, "pubKey":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    move-result-object v1

    return-object v1
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

    .line 159
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 161
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 164
    .local v0, "encoded":[B
    :try_start_9
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_14
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_9 .. :try_end_14} :catch_2c

    .line 167
    nop

    .line 168
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 169
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 170
    return-void

    .line 165
    :catch_2c
    move-exception v1

    .line 166
    .local v1, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 176
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 177
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 178
    return-void

    .line 174
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

    .line 121
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 122
    return v0

    .line 125
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    if-eqz v1, :cond_14

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    .line 127
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECPublicKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 130
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLECPublicKey;
    :cond_14
    instance-of v1, p1, Ljava/security/interfaces/ECPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 131
    return v2

    .line 134
    :cond_1a
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 135
    .local v1, "other":Ljava/security/interfaces/ECPublicKey;
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 136
    return v2

    .line 139
    :cond_2c
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 140
    .local v3, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 142
    .local v4, "otherSpec":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 143
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 144
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 145
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v5

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    if-ne v5, v6, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v2

    .line 142
    :goto_6a
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "EC"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "X.509"

    return-object v0
.end method

.method public blacklist getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getW()Ljava/security/spec/ECPoint;
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_print_public(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
