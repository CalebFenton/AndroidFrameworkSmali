.class public Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final whitelist serialVersionUID:J = 0x1b56d8a5b2600a4L


# instance fields
.field private transient blacklist fetchedParams:Z

.field private transient blacklist key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private blacklist modulus:Ljava/math/BigInteger;

.field private blacklist publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 2
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 48
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .registers 12
    .param p1, "spec"    # Ljava/security/spec/RSAPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    :try_start_3
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 58
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 57
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_26

    .line 68
    nop

    .line 69
    return-void

    .line 66
    :catch_26
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized blacklist ensureReadParams()V
    .registers 5

    monitor-enter p0

    .line 103
    :try_start_1
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-eqz v0, :cond_7

    .line 104
    monitor-exit p0

    return-void

    .line 107
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_public_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    move-result-object v0

    .line 108
    .local v0, "params":[[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 109
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 111
    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_29

    .line 112
    monitor-exit p0

    return-void

    .line 102
    .end local v0    # "params":[[B
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method static blacklist getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 11
    .param p0, "rsaPublicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 73
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 74
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 75
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 73
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-object v0

    .line 82
    :catch_20
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 178
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 180
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 181
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 182
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 180
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    .line 190
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 194
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 195
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 129
    return v0

    .line 132
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v1, :cond_18

    .line 133
    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    .line 139
    .local v1, "other":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 140
    return v0

    .line 144
    .end local v1    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :cond_18
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 145
    return v2

    .line 148
    :cond_1e
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 150
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 151
    .local v1, "other":Ljava/security/interfaces/RSAPublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 152
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v2

    .line 151
    :goto_3e
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "RSA"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_marshal_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 94
    const-string v0, "X.509"

    return-object v0
.end method

.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 122
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 123
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 157
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 159
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 164
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLRSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "publicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
