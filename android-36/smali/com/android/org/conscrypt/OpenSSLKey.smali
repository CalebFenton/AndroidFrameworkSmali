.class public final Lcom/android/org/conscrypt/OpenSSLKey;
.super Ljava/lang/Object;
.source "OpenSSLKey.java"


# instance fields
.field private final greylist-max-o ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

.field private final blacklist hardwareBacked:Z

.field private final greylist-max-o wrapped:Z


# direct methods
.method constructor greylist <init>(J)V
    .registers 4
    .param p1, "ctx"    # J

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    .line 54
    return-void
.end method

.method constructor greylist-max-o <init>(JZ)V
    .registers 5
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZZ)V

    .line 58
    return-void
.end method

.method constructor blacklist <init>(JZZ)V
    .registers 6
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z
    .param p4, "hardwareBacked"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    .line 64
    iput-boolean p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    .line 65
    iput-boolean p4, p0, Lcom/android/org/conscrypt/OpenSSLKey;->hardwareBacked:Z

    .line 66
    return-void
.end method

.method static greylist-max-o fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "ecParams"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 166
    .local v0, "result":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_7

    .line 167
    return-object v0

    .line 170
    :cond_7
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_e

    .line 172
    return-object v0

    .line 175
    :cond_e
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 5
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 198
    const-string v0, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 199
    return-object v1

    .line 201
    :cond_e
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 202
    .local v0, "encoded":[B
    if-nez v0, :cond_15

    .line 203
    return-object v1

    .line 206
    :cond_15
    :try_start_15
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1e
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_15 .. :try_end_1e} :catch_1f

    return-object v1

    .line 207
    :catch_1f
    move-exception v1

    .line 208
    .local v1, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static greylist fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 86
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_c

    .line 87
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 90
    :cond_c
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "keyFormat":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 92
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 93
    :cond_17
    const-string v1, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 97
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 98
    .local v1, "encoded":[B
    if-eqz v1, :cond_3e

    .line 103
    :try_start_29
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_36
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_29 .. :try_end_36} :catch_37

    return-object v2

    .line 104
    :catch_37
    move-exception v2

    .line 105
    .local v2, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 99
    .end local v2    # "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    :cond_3e
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Key encoding is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v1    # "encoded":[B
    :cond_46
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown key format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 142
    .local v0, "result":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_7

    .line 143
    return-object v0

    .line 146
    :cond_7
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_e

    .line 148
    return-object v0

    .line 151
    :cond_e
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o fromPrivateKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 118
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PrivateKey(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_25
    .catchall {:try_start_6 .. :try_end_e} :catchall_23

    .line 119
    .local v1, "keyCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 120
    nop

    .line 127
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 120
    const/4 v3, 0x0

    return-object v3

    .line 123
    :cond_1a
    :try_start_1a
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_25
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 127
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 123
    return-object v3

    .line 127
    .end local v1    # "keyCtx":J
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 124
    :catch_25
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 128
    throw v1
.end method

.method static greylist-max-o fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 5
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 240
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_c

    .line 241
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 244
    :cond_c
    const-string v0, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 248
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 249
    .local v0, "encoded":[B
    if-eqz v0, :cond_33

    .line 254
    :try_start_1e
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c

    return-object v1

    .line 255
    :catch_2c
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_33
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Key encoding is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "encoded":[B
    :cond_3b
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 269
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PUBKEY(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_25
    .catchall {:try_start_6 .. :try_end_e} :catchall_23

    .line 270
    .local v1, "keyCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 271
    nop

    .line 278
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 271
    const/4 v3, 0x0

    return-object v3

    .line 274
    :cond_1a
    :try_start_1a
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_25
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 278
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 274
    return-object v3

    .line 278
    .end local v1    # "keyCtx":J
    :catchall_23
    move-exception v1

    goto :goto_2c

    .line 275
    :catch_25
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 279
    throw v1
.end method

.method private static greylist-max-o getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2
    .param p0, "key"    # Ljava/security/PrivateKey;

    .line 185
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_c

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 188
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;
    .registers 6
    .param p0, "keySpec"    # Ljava/security/spec/PKCS8EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 329
    move-object v0, p0

    .line 333
    .local v0, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_2d

    .line 336
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    nop

    .line 338
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 343
    :try_start_19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object v2

    .line 344
    :catch_1e
    move-exception v2

    .line 345
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 339
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_25
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Unexpected key type"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    .end local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_2d
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static greylist-max-o getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;
    .registers 6
    .param p0, "keySpec"    # Ljava/security/spec/X509EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 296
    move-object v0, p0

    .line 300
    .local v0, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_2d

    .line 303
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    nop

    .line 305
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 310
    :try_start_19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object v2

    .line 311
    :catch_1e
    move-exception v2

    .line 312
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 306
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_25
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Unexpected key type"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    .end local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_2d
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static greylist-max-o wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 219
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 221
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 222
    :cond_11
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 223
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 225
    :cond_1e
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 230
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_c

    .line 231
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 232
    :cond_c
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_18

    .line 233
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 235
    :cond_18
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 351
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 352
    return v0

    .line 355
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 356
    return v2

    .line 359
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 360
    .local v1, "other":Lcom/android/org/conscrypt/OpenSSLKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 361
    return v0

    .line 364
    :cond_1a
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_cmp(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v3

    if-ne v3, v0, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    return v0
.end method

.method greylist getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    return-object v0
.end method

.method greylist-max-o getPrivateKey()Ljava/security/PrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    .line 323
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :sswitch_11
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    .line 319
    :sswitch_17
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    move-result-object v0

    return-object v0

    :sswitch_data_1c
    .sparse-switch
        0x6 -> :sswitch_17
        0x198 -> :sswitch_11
    .end sparse-switch
.end method

.method public greylist getPublicKey()Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 290
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :sswitch_11
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    .line 286
    :sswitch_17
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x6 -> :sswitch_17
        0x198 -> :sswitch_11
    .end sparse-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->hashCode()I

    move-result v0

    return v0
.end method

.method blacklist isHardwareBacked()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->hardwareBacked:Z

    return v0
.end method

.method greylist-max-o isWrapped()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    return v0
.end method
