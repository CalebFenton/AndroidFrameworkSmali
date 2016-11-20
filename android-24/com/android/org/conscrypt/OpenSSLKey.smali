.class public Lcom/android/org/conscrypt/OpenSSLKey;
.super Ljava/lang/Object;
.source "OpenSSLKey.java"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

.field private final engine:Lcom/android/org/conscrypt/OpenSSLEngine;

.field private final wrapped:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(JLcom/android/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # J
    .param p3, "engine"    # Lcom/android/org/conscrypt/OpenSSLEngine;
    .param p4, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@a
    .line 54
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@c
    .line 55
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    #@e
    .line 56
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    #@11
    .line 52
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@6
    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    #@9
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@b
    .line 47
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@d
    .line 48
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    #@f
    .line 49
    iput-boolean p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    #@11
    .line 45
    return-void
.end method

.method public static fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "ecParams"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    .line 159
    .local v0, "result":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_0

    #@6
    .line 160
    return-object v0

    #@7
    .line 163
    :cond_0
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@a
    move-result-object v0

    #@b
    .line 164
    if-eqz v0, :cond_1

    #@d
    .line 165
    return-object v0

    #@e
    .line 168
    :cond_1
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method private static fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "key"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 196
    const-string/jumbo v1, "PKCS#8"

    #@4
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 197
    return-object v3

    #@f
    .line 199
    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    #@12
    move-result-object v0

    #@13
    .line 200
    .local v0, "encoded":[B
    if-nez v0, :cond_1

    #@15
    .line 201
    return-object v3

    #@16
    .line 203
    :cond_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@18
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    #@1b
    move-result-wide v2

    #@1c
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@1f
    return-object v1
.end method

.method public static fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    instance-of v2, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 84
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@6
    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 87
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 88
    .local v1, "keyFormat":Ljava/lang/String;
    if-nez v1, :cond_1

    #@11
    .line 89
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 90
    :cond_1
    const-string/jumbo v2, "PKCS#8"

    #@19
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2

    #@23
    .line 91
    new-instance v2, Ljava/security/InvalidKeyException;

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Unknown key format "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 94
    :cond_2
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    #@40
    move-result-object v0

    #@41
    .line 95
    .local v0, "encoded":[B
    if-nez v0, :cond_3

    #@43
    .line 96
    new-instance v2, Ljava/security/InvalidKeyException;

    #@45
    const-string/jumbo v3, "Key encoding is null"

    #@48
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 99
    :cond_3
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #@4e
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    #@51
    move-result-object v3

    #@52
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    #@55
    move-result-wide v4

    #@56
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@59
    return-object v2
.end method

.method public static fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 2
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "result":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_0

    #@6
    .line 136
    return-object v0

    #@7
    .line 139
    :cond_0
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@a
    move-result-object v0

    #@b
    .line 140
    if-eqz v0, :cond_1

    #@d
    .line 141
    return-object v0

    #@e
    .line 144
    :cond_1
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static fromPrivateKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 111
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PrivateKey(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v2

    #@e
    .line 112
    .local v2, "keyCtx":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 113
    const/4 v4, 0x0

    #@15
    .line 120
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@18
    .line 113
    return-object v4

    #@19
    .line 116
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    #@1b
    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 120
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@21
    .line 116
    return-object v4

    #@22
    .line 117
    .end local v2    # "keyCtx":J
    :catch_0
    move-exception v1

    #@23
    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/security/InvalidKeyException;

    #@25
    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@2a
    .line 120
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@2d
    .line 119
    throw v4
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    instance-of v2, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 235
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@6
    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 238
    .restart local p0    # "key":Ljava/security/PublicKey;
    :cond_0
    const-string/jumbo v2, "X.509"

    #@e
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 239
    new-instance v2, Ljava/security/InvalidKeyException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Unknown key format "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 242
    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@39
    move-result-object v1

    #@3a
    .line 243
    .local v1, "encoded":[B
    if-nez v1, :cond_2

    #@3c
    .line 244
    new-instance v2, Ljava/security/InvalidKeyException;

    #@3e
    const-string/jumbo v3, "Key encoding is null"

    #@41
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 248
    :cond_2
    :try_start_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #@47
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    #@4e
    move-result-wide v4

    #@4f
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    return-object v2

    #@53
    .line 249
    :catch_0
    move-exception v0

    #@54
    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@56
    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@59
    throw v2
.end method

.method public static fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 263
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PUBKEY(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v2

    #@e
    .line 264
    .local v2, "keyCtx":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 265
    const/4 v4, 0x0

    #@15
    .line 272
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@18
    .line 265
    return-object v4

    #@19
    .line 268
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    #@1b
    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 272
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@21
    .line 268
    return-object v4

    #@22
    .line 269
    .end local v2    # "keyCtx":J
    :catch_0
    move-exception v1

    #@23
    .line 270
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/security/InvalidKeyException;

    #@25
    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@2a
    .line 272
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@2d
    .line 271
    throw v4
.end method

.method private static getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    .line 178
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 179
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    #@6
    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 182
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_0
    const-string/jumbo v0, "RSA"

    #@e
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 183
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 186
    :cond_1
    const/4 v0, 0x0

    #@1e
    return-object v0
.end method

.method static getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;
    .locals 6
    .param p0, "keySpec"    # Ljava/security/spec/PKCS8EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    move-object v3, p0

    #@1
    .line 326
    .local v3, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    invoke-virtual {p0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    #@6
    move-result-object v4

    #@7
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    #@a
    move-result-wide v4

    #@b
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 331
    .local v2, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@11
    move-result-object v4

    #@12
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@15
    move-result v4

    #@16
    if-eq v4, p1, :cond_0

    #@18
    .line 332
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@1a
    const-string/jumbo v5, "Unexpected key type"

    #@1d
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4

    #@21
    .line 327
    .end local v2    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v0

    #@22
    .line 328
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@24
    invoke-direct {v4, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v4

    #@28
    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    move-result-object v4

    #@2c
    return-object v4

    #@2d
    .line 337
    :catch_1
    move-exception v1

    #@2e
    .line 338
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@30
    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v4
.end method

.method static getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;
    .locals 6
    .param p0, "keySpec"    # Ljava/security/spec/X509EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    move-object v3, p0

    #@1
    .line 293
    .local v3, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    invoke-virtual {p0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    #@6
    move-result-object v4

    #@7
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    #@a
    move-result-wide v4

    #@b
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 298
    .local v2, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@11
    move-result-object v4

    #@12
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@15
    move-result v4

    #@16
    if-eq v4, p1, :cond_0

    #@18
    .line 299
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@1a
    const-string/jumbo v5, "Unexpected key type"

    #@1d
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4

    #@21
    .line 294
    .end local v2    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v0

    #@22
    .line 295
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@24
    invoke-direct {v4, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v4

    #@28
    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    move-result-object v4

    #@2c
    return-object v4

    #@2d
    .line 304
    :catch_1
    move-exception v1

    #@2e
    .line 305
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@30
    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v4
.end method

.method private static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
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
    .line 213
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 214
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v1, "RSA"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 215
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 216
    :cond_0
    const-string/jumbo v1, "EC"

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 217
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 219
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Unsupported key algorithm: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1
.end method

.method private static wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 3
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 225
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    #@6
    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 226
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 227
    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    #@11
    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 229
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Unknown key type: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 344
    if-ne p1, p0, :cond_0

    #@4
    .line 345
    return v1

    #@5
    .line 348
    :cond_0
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 349
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 352
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKey;

    #@d
    .line 353
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@f
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_2

    #@19
    .line 354
    return v1

    #@1a
    .line 360
    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@1c
    if-nez v3, :cond_3

    #@1e
    .line 361
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getEngine()Lcom/android/org/conscrypt/OpenSSLEngine;

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_6

    #@24
    .line 362
    return v2

    #@25
    .line 364
    :cond_3
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@27
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getEngine()Lcom/android/org/conscrypt/OpenSSLEngine;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLEngine;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_4

    #@31
    .line 365
    return v2

    #@32
    .line 367
    :cond_4
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    #@34
    if-eqz v3, :cond_5

    #@36
    .line 368
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    #@38
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    return v1

    #@41
    .line 369
    :cond_5
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    if-eqz v3, :cond_6

    #@47
    .line 370
    return v2

    #@48
    .line 374
    :cond_6
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@4a
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@4d
    move-result-object v4

    #@4e
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_cmp(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@51
    move-result v3

    #@52
    if-ne v3, v1, :cond_7

    #@54
    :goto_0
    return v1

    #@55
    :cond_7
    move v1, v2

    #@56
    goto :goto_0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getEngine()Lcom/android/org/conscrypt/OpenSSLEngine;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@2
    return-object v0
.end method

.method public getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@2
    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@2
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@5
    move-result v0

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 316
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@b
    const-string/jumbo v1, "unknown PKEY type"

    #@e
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 312
    :sswitch_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@14
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@17
    return-object v0

    #@18
    .line 314
    :sswitch_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@1d
    return-object v0

    #@1e
    .line 310
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x198 -> :sswitch_1
    .end sparse-switch
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@2
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@5
    move-result v0

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 283
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@b
    const-string/jumbo v1, "unknown PKEY type"

    #@e
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 279
    :sswitch_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@14
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@17
    return-object v0

    #@18
    .line 281
    :sswitch_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@1d
    return-object v0

    #@1e
    .line 277
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x198 -> :sswitch_1
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@2
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, 0x11

    #@8
    .line 381
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@c
    if-nez v2, :cond_0

    #@e
    const-wide/16 v2, 0x0

    #@10
    :goto_0
    long-to-int v2, v2

    #@11
    add-int v0, v1, v2

    #@13
    .line 382
    return v0

    #@14
    .line 381
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@16
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    #@19
    move-result-wide v2

    #@1a
    goto :goto_0
.end method

.method isEngineBased()Z
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engine:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isWrapped()Z
    .locals 1

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    #@2
    return v0
.end method
